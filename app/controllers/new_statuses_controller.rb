class NewStatusesController < ApplicationController
  # GET /new_statuses
  # GET /new_statuses.json
  def index
    @new_statuses = NewStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_statuses }
    end
  end

  # GET /new_statuses/1
  # GET /new_statuses/1.json
  def show
    @new_status = NewStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_status }
    end
  end

  # GET /new_statuses/new
  # GET /new_statuses/new.json
  def new
    @new_status = NewStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_status }
    end
  end

  # GET /new_statuses/1/edit
  def edit
    @new_status = NewStatus.find(params[:id])
  end

  # POST /new_statuses
  # POST /new_statuses.json
  def create
    @new_status = NewStatus.new(params[:new_status])

    respond_to do |format|
      if @new_status.save
        format.html { redirect_to @new_status, notice: 'New status was successfully created.' }
        format.json { render json: @new_status, status: :created, location: @new_status }
      else
        format.html { render action: "new" }
        format.json { render json: @new_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /new_statuses/1
  # PUT /new_statuses/1.json
  def update
    @new_status = NewStatus.find(params[:id])

    respond_to do |format|
      if @new_status.update_attributes(params[:new_status])
        format.html { redirect_to @new_status, notice: 'New status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_statuses/1
  # DELETE /new_statuses/1.json
  def destroy
    @new_status = NewStatus.find(params[:id])
    @new_status.destroy

    respond_to do |format|
      format.html { redirect_to new_statuses_url }
      format.json { head :no_content }
    end
  end
end
