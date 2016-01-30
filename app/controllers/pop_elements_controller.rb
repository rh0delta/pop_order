require 'pry'
class PopElementsController < ApplicationController
  before_action :set_pop_element, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /pop_elements
  # GET /pop_elements.json
  def index
    @pop_elements = PopElement.all
    @orders = Order.user_order(current_user)
  end

  # GET /pop_elements/1
  # GET /pop_elements/1.json
  def show
  end

  # GET /pop_elements/new
  def new
    @pop_element = PopElement.new
  end

  # GET /pop_elements/1/edit
  def edit
  end

  # POST /pop_elements
  # POST /pop_elements.json
  def create
    @pop_element = PopElement.new(pop_element_params)

    respond_to do |format|
      if @pop_element.save
        format.html { redirect_to @pop_element, notice: 'Pop element was successfully created.' }
        format.json { render :show, status: :created, location: @pop_element }
      else
        format.html { render :new }
        format.json { render json: @pop_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pop_elements/1
  # PATCH/PUT /pop_elements/1.json
  def update
    respond_to do |format|
      if @pop_element.update(pop_element_params)
        format.html { redirect_to @pop_element, notice: 'Pop element was successfully updated.' }
        format.json { render :show, status: :ok, location: @pop_element }
      else
        format.html { render :edit }
        format.json { render json: @pop_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pop_elements/1
  # DELETE /pop_elements/1.json
  def destroy
    @pop_element.destroy
    respond_to do |format|
      format.html { redirect_to pop_elements_url, notice: 'Pop element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def pick_type
    # binding.pry
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pop_element
      @pop_element = PopElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pop_element_params
      params.require(:pop_element).permit(:name, :price, :master_type, :sub_type, :availability)
    end
end
