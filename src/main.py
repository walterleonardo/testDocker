from flask import Flask
		
app = Flask(__name__)

def suma(a,b):
	return a+b


@app.route('/')
def index():
	res = suma(3,2)
	return "el resultado es:" + str(res)
		
if __name__ == '__main__':
	app.run(debug=True)

