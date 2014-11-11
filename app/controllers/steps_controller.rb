class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  # GET /steps
  def index
    @steps = Step.all
  end

  # GET /steps/1
  def show
  end

  # GET /steps/new
  def new
    @list = List.find(params[:list_id])
    @step = @list.steps.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  def create
    @list = List.find(params[:list_id])
    @step = @list.steps.build(step_params)
    if @step.save
      redirect_to @list, notice: 'Step was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /steps/1
  def update
    if @step.update(step_params)
      redirect_to @list, notice: 'Step was successfully updated.'
    else
      render :new
    end
  end

  # DELETE /steps/1
  def destroy
    @step.destroy
    redirect_to steps_url, notice: 'Step was successfully destroyed.'
  end

  private

  def set_step
    @list = List.find(params[:list_id])
    @step = @list.steps.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:body)
  end
end
