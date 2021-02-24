from django.shortcuts import render, render_to_response
from django.template import RequestContext, loader
from instituciones.models import *
from django.db.models import Count, Min, Sum, Avg
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger, InvalidPage

def index(request):
	return render_to_response('index.html', context_instance=RequestContext(request))

def home(request):
	return render_to_response('home.html', context_instance=RequestContext(request))

def centros_educativos(request):
	lista = Instituciones.objects.all()
	paginator = Paginator(lista, 8) # Show 25 contacts per page
	page = request.GET.get('page')
	try:
		lis = paginator.page(page)
	except PageNotAnInteger:
		lis = paginator.page(1)
	except EmptyPage:
		lis = paginator.page(paginator.num_pages)
	return render(request, 'centros_educativos.html', {'lis':lis})

def buscar(request):
	caja_texto = request.POST.get('buscalo')
	inst_educ = Instituciones.objects.filter(nombre__icontains = caja_texto)
	return render(request, 'buscar.html', {'instituciones': inst_educ, 'tipo': tipo})

def tipo(request):
	lista = TipoInstitucion.objects.all()
	return render(request, 'tipo.html', {'tipo_institucion':lista})

def mapa(request):
	tipo1=Instituciones.objects.filter(latitud__contains='.' , longitud__contains='.')
	tipos = TipoInstitucion.objects.all()
	criterio = request.POST.get('filtro_mapa')
	instituciones = Instituciones.objects.filter(id_tipo_institucion=criterio)
	return render(request, 'mapa.html', {'instituciones':instituciones, 'tipo_institucion': tipos})

def localizacion(request):
	tipo1=Instituciones.objects.filter(latitud__contains='.' , longitud__contains='.')
	return render(request, 'localizacion.html', {'localizacion':tipo1})

def estadisticas(request):
	criterio = request.POST.get('categoria')
	lista = []
	lista1 = []
	
	if criterio == '1':
		tipo = TipoInstitucion.objects.all()
		for x in tipo:
			consulta = Instituciones.objects.filter(id_tipo_institucion = x).count()
			lista.append(dict([(x, consulta)]))
		return render(request, 'estadisticas.html', {'diccionario':lista})
	else:
		tipo = ClasificacionInstitucion.objects.all()
		for x in tipo:
			consulta = Instituciones.objects.filter(id_clasificacion_institucion = x).count()
			lista.append(dict([(x, consulta)]))
		return render(request, 'estadisticas.html', {'diccionario':lista})

def institucion(request):
	ide = request.GET.get('id')
	centro = Instituciones.objects.get(id_institucion=ide)
	tipo = centro.id_tipo_institucion
	
	if tipo == 'Universidad':
		centros_instituciones = Instituciones.objects.filter(InstitucionesCarreras__id_institucion)
		print(centros_instituciones)
	else:
		return render(request, 'institucion.html', {'instituciones':centro})

def inst_tipos(request):
	ide = request.GET.get('id')
	inst = Instituciones.objects.filter(id_tipo_institucion = ide)
	tipo = TipoInstitucion.objects.get(id_tipo_institucion = ide)
	return render(request, 'inst_tipos.html', {'instituciones1':inst, 'tipo': tipo})