from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'educacion.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^index','instituciones.views.index', name='index'),
    url(r'^home','instituciones.views.home', name='home'),
    url(r'^centros_educativos','instituciones.views.centros_educativos', name='centros_educativos'),
    url(r'^tipo','instituciones.views.tipo', name='tipo'),
    url(r'^mapa','instituciones.views.mapa', name='mapa'),
    url(r'^buscar','instituciones.views.buscar', name='buscar'),
    url(r'^institucion','instituciones.views.institucion', name='institucion'),
    url(r'^estadisticas','instituciones.views.estadisticas', name='estadisticas'),
    url(r'^tipo','instituciones.views.tipo', name='tipo'),
    url(r'^inst_tipos','instituciones.views.inst_tipos', name='inst_tipos'),
    url(r'^localizacion','instituciones.views.localizacion', name='localizacion'),
)
