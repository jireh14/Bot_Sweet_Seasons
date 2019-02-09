import web
        
urls = (
    '/', 'Index',
    '/acercade', 'Acercade',
)

render = web.template.render('templates/', base='master')

class Index: 
    def GET(self):
        mesas =['Solo Dulces','Solo Frutas', 'Solo Frituras', 'De Dos Cosas', 'De Tres Cosas']
        invitados= ['25', '35', '45', '50', '100']
        precio=['500.00', '700.00', '900.00', '1200.00', '2900.00']
        return render.index(mesas, invitados, precio)

class Acercade: 
    def GET(self):
        mesas = "Solo Dulces","Solo Frutas", "Solo Frituras", "De Dos Cosas", "De Tres Cosas"
        invitados= "25", "35", "45", "50", "100"
        precio= "500", "700", "900", "1200", "2900"
        return render.acercade(mesas, invitados, precio)

if __name__ == "__main__":
    web.config.debug = False
    app = web.application(urls, globals())
    app.run()
