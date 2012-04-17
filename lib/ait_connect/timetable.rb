module ActiveInTime
  class Timetable
    attr_reader :json

    def initialize(active_in_time, json)
      @active_in_time, @json = active_in_time, json
    end
    
    def fetch
      @json = @active_in_time.get("timetables/#{id}")["timetable"]
      self
    end

    def id
      @json["id"]
    end

    def name
      @json["name"]
    end
    
    def timetable_entries(options = {})
      @active_in_time.timetable_entries.find(self.id,options)
    end
    
  end
end
