from flask import Flask, render_template

app = Flask(__name__)

visit_count = 0

@app.route('/')
def home():
    global visit_count
    visit_count += 1
    return render_template('index.html', visit_count=visit_count)

# @app.route('/health')
# def health():
#     return {'status': 'healthy'}, 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
