from rest_framework.views import APIView
from rest_framework.response import Response
from bus_booking.models import Bus, Booking  # Change this line
from bus_booking.serializers import BusSerializer, BookingSerializer  

class BusList(APIView):
    def get(self, request):
        buses = Bus.objects.all()
        serializer = BusSerializer(buses, many=True)
        return Response(serializer.data)

class BookingList(APIView):
    def get(self, request):
        bookings = Booking.objects.all()
        serializer = BookingSerializer(bookings, many=True)
        return Response(serializer.data)
