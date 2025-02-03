class AppointmentsController < ApplicationController
  def index
    @services = Service.all
    @appointment = Appointment.new
    @available_times = [
      '09:00', '10:00', '11:00', '14:00', '15:00', '16:00', '17:00'
    ]
  end

  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.turbo_stream
        format.html { redirect_to appointments_path, notice: 'Agendamento realizado com sucesso!' }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace('new_appointment', partial: 'form', locals: { appointment: @appointment }) }
        format.html { render :index }
      end
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:name, :phone, :service_id, :date, :time)
  end
end
