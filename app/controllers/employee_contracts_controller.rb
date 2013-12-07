class EmployeeContractsController < ApplicationController
  before_action :set_employee_contract, only: [:show, :edit, :update, :destroy]
  before_action :set_employees

  # GET /employee_contracts
  # GET /employee_contracts.json
  def index
    @employee_contracts = EmployeeContract.all
  end

  # GET /employee_contracts/1
  # GET /employee_contracts/1.json
  def show
    @employee = Employee.where(:id => @employee_contract.employee_id).first
  end

  # GET /employee_contracts/new
  def new
    @employee_contract = EmployeeContract.new
  end

  # GET /employee_contracts/1/edit
  def edit
  end

  # POST /employee_contracts
  # POST /employee_contracts.json
  def create
    @employee_contract = EmployeeContract.new(employee_contract_params)

    respond_to do |format|
      if @employee_contract.save
        format.html { redirect_to @employee_contract, notice: 'Employee contract was successfully created.' }
        format.json { render action: 'show', status: :created, location: @employee_contract }
      else
        format.html { render action: 'new' }
        format.json { render json: @employee_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_contracts/1
  # PATCH/PUT /employee_contracts/1.json
  def update
    respond_to do |format|
      if @employee_contract.update(employee_contract_params)
        format.html { redirect_to @employee_contract, notice: 'Employee contract was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @employee_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_contracts/1
  # DELETE /employee_contracts/1.json
  def destroy
    @employee_contract.destroy
    respond_to do |format|
      format.html { redirect_to employee_contracts_url }
      format.json { head :no_content }
    end
  end

  private

    def set_employee

    end
    #used for the select box in the forms
    def set_employees
      @employees = Employee.pluck(:first_name, :id)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_contract
      @employee_contract = EmployeeContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_contract_params
      params.require(:employee_contract).permit(:start_date, :contract_date, :employee_id, :pay_rate, :category)
    end
end
