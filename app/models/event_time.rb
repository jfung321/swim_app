class EventTime < ApplicationRecord
  belongs_to :user
  belongs_to :event

  scope :butterfly, -> {joins(:event).where('stroke = ?', 'butterfly')}
  scope :backstroke, -> {joins(:event).where('stroke = ?', 'backstroke')}
  scope :best_times, -> {order('time')}

  def time_difference
  	if time <= event.ccs_time
  	  return "0"
  	end
  	return time - event.ccs_time
  end  
end
