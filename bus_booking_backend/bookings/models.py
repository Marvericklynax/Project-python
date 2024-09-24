from django.db import models

class Bus(models.Model):
    bus_number = models.CharField(max_length=20)
    capacity = models.IntegerField()
    route = models.CharField(max_length=100)
    available_seats = models.IntegerField()

    def __str__(self):
        return self.bus_number

class Booking(models.Model):
    bus = models.ForeignKey(Bus, on_delete=models.CASCADE)
    passenger_name = models.CharField(max_length=100)
    number_of_seats = models.IntegerField()

    def __str__(self):
        return f"{self.passenger_name} - {self.bus.bus_number}"
