from django.shortcuts import render, redirect

from django.http import JsonResponse
import requests

from bs4 import BeautifulSoup

def shiny(request): 
    return render(request, 'home.html')

def shiny_contents(request):
    print('hello')
    response = requests.get('http://localhost:8001/')
    soup = BeautifulSoup(response.content, 'html.parser')
    
    return JsonResponse({'html_contents': str(soup)})