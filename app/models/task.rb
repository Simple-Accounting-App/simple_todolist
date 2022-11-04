class Task < ApplicationRecord
  belongs_to :user

  TO_DO       = 1
  IN_PROGRESS = 2
  DONE        = 3

  STATUSES = {
    TO_DO => 'To do',
    IN_PROGRESS => 'In progress',
    DONE => 'Done'
  }.freeze

  validates :title, presence: true
  validates :status, inclusion: {
    in: STATUSES.keys,
    message: "must be one of these options: #{STATUSES.values.join ', '}"
  }

  def status_name
    STATUSES[status]
  end
end
