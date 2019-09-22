class CarFormsController < ApplicationController
  before_action :set_car_form, only: [:show, :edit, :update, :destroy]

  # GET /car_forms
  # GET /car_forms.json
  def index
    @car_forms = CarForm.all
  end

  # GET /car_forms/1
  # GET /car_forms/1.json
  def show
  end

  # GET /car_forms/new
  def new
    @car_form = CarForm.new
  end

  # GET /car_forms/1/edit
  def edit
  end

  # POST /car_forms
  # POST /car_forms.json
  def create
    @car_form = CarForm.new(car_form_params)

    respond_to do |format|
      if @car_form.save
        format.html { redirect_to @car_form, notice: 'Car form was successfully created.' }
        format.json { render :show, status: :created, location: @car_form }
      else
        format.html { render :new }
        format.json { render json: @car_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_forms/1
  # PATCH/PUT /car_forms/1.json
  def update
    respond_to do |format|
      if @car_form.update(car_form_params)
        format.html { redirect_to @car_form, notice: 'Car form was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_form }
      else
        format.html { render :edit }
        format.json { render json: @car_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_forms/1
  # DELETE /car_forms/1.json
  def destroy
    @car_form.destroy
    respond_to do |format|
      format.html { redirect_to car_forms_url, notice: 'Car form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_form
      @car_form = CarForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_form_params
      params.fetch(:car_form, {})
    end
end
