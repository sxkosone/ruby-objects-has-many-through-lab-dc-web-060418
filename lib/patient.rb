class Patient
    @@all = []
    attr_accessor :name

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        new_appoint = Appointment.new(self, doctor, date)
    end

    def appointments
        my_appoints = Appointment.all.select do |appo|
            appo.patient == self
        end
    end

    def doctors
        self.appointments.collect do |appo|
            appo.doctor
        end
    end

end