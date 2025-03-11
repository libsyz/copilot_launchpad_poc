class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def has_completed_previous?(learning_module)
    return true if learning_module.position === 0

    previous_learning_module = Learningmodule.find_by(position: learning_module.position - 1)

    Completion.exists?(user: self, learningmodule: previous_learning_module)
  end
end
