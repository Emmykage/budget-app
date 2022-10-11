# frozen_string_literal: true

class GroupPurchasesController < ApplicationController
  before_action :set_group_purchase, only: %i[show edit update destroy]

  # GET /group_purchases or /group_purchases.json
  def index
    @group_purchases = GroupPurchase.all
  end

  # GET /group_purchases/1 or /group_purchases/1.json
  def show; end

  # GET /group_purchases/new
  def new
    @group_purchase = GroupPurchase.new
  end

  # GET /group_purchases/1/edit
  def edit; end

  # POST /group_purchases or /group_purchases.json
  def create
    @group_purchase = GroupPurchase.new(group_purchase_params)

    respond_to do |format|
      if @group_purchase.save
        format.html do
          redirect_to group_purchase_url(@group_purchase), notice: 'Group purchase was successfully created.'
        end
        format.json { render :show, status: :created, location: @group_purchase }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_purchases/1 or /group_purchases/1.json
  def update
    respond_to do |format|
      if @group_purchase.update(group_purchase_params)
        format.html do
          redirect_to group_purchase_url(@group_purchase), notice: 'Group purchase was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @group_purchase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_purchases/1 or /group_purchases/1.json
  def destroy
    @group_purchase.destroy

    respond_to do |format|
      format.html { redirect_to group_purchases_url, notice: 'Group purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group_purchase
    @group_purchase = GroupPurchase.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_purchase_params
    params.require(:group_purchase).permit(:purchase_id, :group_id)
  end
end
