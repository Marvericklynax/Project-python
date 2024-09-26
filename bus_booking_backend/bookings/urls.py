from django.urls import path
from ..bus_booking.views import BusList, BookingList

urlpatterns = [
    path('buses/', BusList.as_view(), name='bus-list'),
    path('bookings/', BookingList.as_view(), name='booking-list'),
]
