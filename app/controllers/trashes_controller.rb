class TrashesController < ApplicationController
  # GET /trashes or /trashes.json
  def index
    @trashes = Trash.all
  end

  # GET /trashes/1 or /trashes/1.json
  def show
    @trash = Trash.new()
    @ward = Ward.find_by(id:params[:id])
    @wardplace = Wardplace.find_by(id:params[:wardplace_id])
    @default_ward = Ward.find_by(name: '藤沢市')
    @default_wardplace = Wardplace.find_by(name:"遠藤")
    @trash_types = TrashType.all
    @search_word = ""
    if params[:search_word] != nil && params[:search_word] != ""
      @search_word = params[:search_word]
      @trashes = Trash.where(name:@search_word)
    else
      @trashes = Trash.all
    end
    p "〜〜〜〜ーーー"
    p @trashes
    p "〜〜〜〜ーーー"
  end

  # GET /trashes/new
  def new

    @trash = Trash.new
  end

  # GET /trashes/1/edit
  def edit
  end

  # POST /trashes or /trashes.json
  def create

    @trash = Trash.find_by(name: params[:trash_name])
    if @trash == nil
      @trash = Trash.create(name: params[:trash_name])
    end

    @search_word = params[:search_word]
    @ward_id = Ward.find_by(id:params[:ward_id].to_i).id
    @wardplace_id = Wardplace.find_by(id:params[:wardplace_id].to_i).id

    
    if params[:trash_type_name] != "" && params[:trash_type_name] != nil
      @trash_type = TrashType.find_by(name: params[:trash_type_name])
      if @trash_type == nil
        @trash_type = TrashType.create(name: params[:trash_type_name])
      end      
      @address_trash = AddressTrash.find_by(trash_id: @trash.id,wardplace_id:@wardplace_id,trash_type_id:@trash_type.id)
      if @address_trash == nil
        @address_trash = AddressTrash.create(trash_id: @trash.id,wardplace_id:@wardplace_id,trash_type_id:@trash_type.id)
      end  
      redirect_to "/trashes/"+@ward_id.to_s+"/"+@wardplace_id.to_s+"/"+@search_word
    end
  end

  # PATCH/PUT /trashes/1 or /trashes/1.json
  def update
    respond_to do |format|
      if @trash.update(trash_params)
        format.html { redirect_to trash_url(@trash), notice: "Trash was successfully updated." }
        format.json { render :show, status: :ok, location: @trash }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trashes/1 or /trashes/1.json
  def destroy
    @trash.destroy

    respond_to do |format|
      format.html { redirect_to trashes_url, notice: "Trash was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def trash_params
      params.require(:trash).permit(:trash_name)
    end
end
