class DocumentsController < ApplicationController
  before_action :require_log_in

  def new
    @document = Document.new
  end
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find(params[:id])
  end

  # def download
  #   @document = Document.find(params[:id])
  #   send_data @document.file.read, filename: @document.name
  # end

  def create
    @document = current_user.documents.build(document_params)
    if @document.save
      flash[:success] = t ".create_success"
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def document_params
    params.require(:document).permit :name, :description, :attachment,
      :category_id
  end
end
