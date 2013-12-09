class Contract < ActiveRecord::Base
  before_save :default_values

  def default_values
    self.date ||= Date.today
    self.enrollment_date ||= Date.today
    self.final_class_date ||= Date.today
    self.final_interim_test ||= Date.today
    self.hours ||= 0.0
    self.amount_paid ||= 0.0
    self.paid_hours ||= 0.0
    self.used_hours ||= 0.0
    self.remaining_hours ||= 0.0
    self.new_or_renew = true if self.new_or_renew.nil?
    self.dt_date ||= Date.today
    self.dc_date ||= Date.today
    self.dt_amount ||= 0.0
    self.est_class_schedule ||= ""
    self.hrs_per_week ||= 0.0
    self.chart_rate ||= 0.0
    self.tuition ||= 0.0
    self.dsc ||= 0.0
    self.program_explanation ||= ""
    self.total_money ||= 0.0
    self.student_id ||= 1
  end

  belongs_to :student

  has_many :daily_data_payments, through: :students

  has_many :guardians, through: :contracts_guardians
  has_many :contracts_guardians


end
