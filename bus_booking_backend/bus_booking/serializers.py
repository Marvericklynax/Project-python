# bus_booking/serializers.py
from rest_framework import serializers
from .models import Bus, Booking

class BusSerializer(serializers.ModelSerializer):
    class Meta:
        model = Bus
        fields = '__all__'  # Include all fields, or specify specific ones

class BookingSerializer(serializers.ModelSerializer):
    class Meta:
        model = Booking
        fields = '__all__'
