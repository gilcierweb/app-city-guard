class Admin::DashboardController < AdminController
  def index
    @count_collected = Inspection.count
    @count_car_cleared  = Inspection.count
    @count_moto_cleared = Inspection.count
    @count_recurrent = Inspection.count
  end
end
