from django.contrib import admin
from django.urls import path, include
from django.views.generic import TemplateView
from .routers import router
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
    path('onsen_inn_search', TemplateView.as_view(template_name='onsen_inns/index.html')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
