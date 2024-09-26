from django.db import models

class Bus(models.Model):
    name = models.CharField(max_length=255)
    seats = models.IntegerField()
    available = models.BooleanField(default=True)

    def __str__(self):
        return self.name


class Booking(models.Model):
    id = models.BigAutoField(primary_key=True)  # Explicit primary key
    bus = models.ForeignKey(Bus, on_delete=models.CASCADE)
    passenger_name = models.CharField(max_length=100)
    booking_date = models.DateField()

    def __str__(self):
        return f'{self.passenger_name} - {self.bus.name}'
