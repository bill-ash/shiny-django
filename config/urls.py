
from django.contrib import admin
from django.urls import path
from pages.views import (
    shiny, shiny_contents
)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('shiny/', shiny, name='shiny'),
    path('shiny_contents/', shiny_contents, name='shiny_contents'),
]
