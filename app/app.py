from flask import Flask, request, render_template, jsonify
import random

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/robotframework', methods= ['POST'])
def process():
    first_name = request.form['firstName']
    last_name = request.form['lastName']
    welcome_list = ['Welkom', 'Welcome', 'Ласкаво просимо']
    output = f'{first_name} {last_name}'
    if output == 'Admin Admin':
        return jsonify({'output': 'ROBOT FRAMEWORK WORKSHOP'})
    if first_name and last_name:
      return jsonify({'output': f'{random.choice(welcome_list)} {output}'})
    return jsonify({'error' : 'Missing data!'})

if __name__ == '__main__':
    app.run(debug=True)
