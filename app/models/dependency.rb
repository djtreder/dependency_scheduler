class Dependency < ActiveRecord::Base
  module Enum
    START_TO_START = 'start_to_start'
    START_TO_FINISH = 'start_to_finish'
    FINISH_TO_START = 'finish_to_start'
    FINISH_TO_FINISH = 'finish_to_finish'
  end
end
