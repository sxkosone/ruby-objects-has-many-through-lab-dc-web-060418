class Doctor
    @@all = []
    attr_accessor :name

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        new_apt = Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select do |appo|
            appo.doctor == self
        end
    end

    def patients
        self.appointments.collect do |my_appo|
            my_appo.patient
        end
    end

end