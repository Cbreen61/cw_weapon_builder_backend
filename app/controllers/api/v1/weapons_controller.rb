class Api::V1::WeaponsController < ApplicationController
  before_action :set_weapon, only: [:show, :update, :destroy]

  # GET /weapons
  def index
    @weapon = Weapon.all

    render json: Weapon.arr_to_json
  end

  # GET /weapons/1
  def show
    render json: @weapon.instance_to_json
  end

  # POST /weapons
  def create
    @weapon = Weapon.new(weapon_params)

    if @weapon.save
      render json: @weapon.instance_to_json, status: :accepted
    else
      render json: @weapon.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weapons/1
  def update
    if @weapon.update(weapon_params)
      render json: @weapon
    else
      render json: @weapon.errors, status: :unprocessable_entity
    end
  end

  # DELETE /weapons/1
  def destroy
    @weapon.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weapon
      @weapon = Weapon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weapon_params
      params.require(:weapon).permit(:id, :name, :weapon_type, :muzzle, :barrel, :laser, :optic, :stock, :underbarrel, :ammunition, :rear, :grip, :perk, :image, :game_id)
    end
end
