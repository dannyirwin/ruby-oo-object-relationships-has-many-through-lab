class Patient
    attr_reader :name
    @@all = []
    def initialize name
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment date, doctor
        Appointment.new date, self, doctor
    end

    def appointments
        Appointment.all.filter{|apt| apt.patient == self}
    end

    def doctors
        appointments.map(&:doctor).uniq
    end
end