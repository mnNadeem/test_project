class PagesController < ApplicationController
  before_action :find_page, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_admin_user!, :except => [:show, :index]
  def index
      @pages=Page.all
      # @pages=Page.all.order("created_at DESC")
  end
  def new
    @page=Page.new
  end

  def create
    @page=Page.new(page_params)
    if @page.save
      CrudNotificationMailer.create_notification(@page).deliver_now
      redirect_to @page        #it is the prefix for the page show
    else
      render 'new'
    end
  end
  def show
  end
  def edit
  end
  def update

    if @page.update(page_params)
      redirect_to @page
    else
      render 'edit'
    end
  end

  def destroy
    @page.destroy
    redirect_to root_path
  end

  private

  def find_page
    @page=Page.find(params[:id])
  end


  def page_params
    params.require(:page).permit(:title, :body)
                   #model
  end



end
