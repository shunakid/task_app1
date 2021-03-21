class Task < ApplicationRecord
    validates :name, presence: true
    validates :name, length: { maximum: 30 }
    validate :validate_name_not_including_comma
    validates :start_date, presence: true
    validates :finish_date, presence: true
    validate :start_finish_check
    validate :start_check
    
    def start_finish_check
      errors.add(:finish_date, "は開始時刻より遅い時間を選択してください") if self.start_date > self.finish_date
    end
    
    def start_check
      errors.add(:start_date, "は現在の日時より遅い時間を選択してください") if self.start_date < Time.now
    end
    
    private
    
    def validate_name_not_including_comma
      errors.add(:name, 'にカンマを含めることはできません') if name&.include?(',')
    end
end
