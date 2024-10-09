from flask import Flask, request, jsonify, render_template

app = Flask(__name__)

@app.route('/')
def main():
    return render_template('main.html')

@app.route('/chat')
def chat():
    return render_template('index.html')

@app.route('/api', methods=['POST'])
def api():
    data = request.json
    if 'message' not in data:
        return jsonify({'error': 'No message provided'}), 400

    message = data['message']
    response = get_response(message)
    
    return jsonify(response)

def get_response(message):
    # Define predefined questions and answers
    faq = {
        "Hello": "How can I assist you Today?",
        "hello": "How can I assist you Today?",
        "What can you do?" :"I can answer some of the questions regarding the provided courses such as JAVA, PYTHON, OS AND MACHINE LEARNING.",
        "Can yo tell me the importance of communication skills?": "In the workplace, clear communication is essential. It affects collaboration, teamwork, and productivity.",
        "What are common syntax errors in Java?": "Students often struggle with syntax errors, especially when they are new to programming.",
        "What are object-oriented concepts in Java?": "Concepts like classes, objects, inheritance, polymorphism, encapsulation, and abstraction.",
        "How do you handle exceptions in Java?": "How to handle exceptions effectively and when to use try-catch blocks.",
        "How does Java manage memory?": "Understanding garbage collection and how Java manages memory.",
        "How do you handle files in Java?": "Reading from and writing to files using Java's input/output libraries.",
        "How do you manage concurrency in Java?": "Managing threads and synchronization in multi-threaded applications.",
        "What is the Java Collections Framework?": "Understanding different data structures like ArrayList, HashMap, etc., and their usage.",

        "What are common indentation errors in Python?": "Python's reliance on indentation can lead to errors if not properly formatted.",
        "What data structures are available in Python?": "Understanding and using Python's built-in data structures like lists, dictionaries, tuples, and sets.",
        "How do you define functions and import modules in Python?": "Defining functions, importing modules, and understanding namespaces.",
        "How do you handle files in Python?": "Reading and writing files using Python's file handling capabilities.",
        "How do you handle errors in Python?": "Using try-except blocks and understanding Python's exception hierarchy.",
        "What are the object-oriented programming concepts in Python?": "Concepts such as classes, objects, inheritance, and polymorphism in Python.",
        "How do you use list comprehensions in Python?": "Understanding and utilizing list comprehensions for concise and efficient code.",
        "What are some popular libraries and packages in Python?": "Working with popular libraries like NumPy, Pandas, Matplotlib, etc., for data manipulation and visualization.",

        "What is process management in operating systems?": "Understanding processes, process states, and process scheduling algorithms.",
        "What is memory management in operating systems?": "Concepts like virtual memory, paging, segmentation, and memory allocation strategies.",
        "How do file systems work in operating systems?": "Understanding file system structures, file operations, and directory management.",
        "What are concurrency and synchronization in operating systems?": "Concepts like deadlock, race conditions, and synchronization mechanisms (semaphores, mutexes, etc.).",
        "How does I/O management work in operating systems?": "OS manages input and output devices and buffers data.",
        "What are security and protection in operating systems?": "Basics of OS security mechanisms like authentication, authorization, and access control.",

        "What are the mathematical foundations of machine learning?": "Understanding linear algebra, calculus, probability, and statistics concepts used in machine learning.",
        "What are the types of learning in machine learning?": "Differentiating between supervised, unsupervised, and reinforcement learning.",
        "How do you preprocess data for machine learning?": "Techniques for cleaning, normalizing, and transforming data before feeding it into machine learning models.",
        "How do you select models in machine learning?": "Choosing appropriate algorithms/models based on the nature of the problem and data.",
        "What are evaluation metrics in machine learning?": "Understanding metrics like accuracy, precision, recall, F1-score, etc., for evaluating model performance.",
        "What are overfitting and underfitting in machine learning?": "Identifying and mitigating these common issues in machine learning models.",
        "What is feature selection and engineering in machine learning?": "Techniques for selecting relevant features and creating new features from existing data.",
        "What is deep learning in machine learning?": "Basics of neural networks, convolutional neural networks (CNNs), recurrent neural networks (RNNs), and their applications.",

        "What are common challenges in assignments and projects?": "Difficulty in implementing concepts learned in courses into assignments and projects.",
        "How do I gain conceptual understanding in my courses?": "Clarity on theoretical concepts and their practical applications.",
        "What are debugging techniques?": "Techniques for identifying and fixing bugs in code.",
        "How do I manage my time effectively?": "Balancing coursework, assignments, and projects effectively.",
        "Where can I find reliable resources for my courses?": "Finding reliable resources (books, online courses, tutorials) to supplement course material.",
        "What are the career prospects in my field?": "Understanding career prospects and preparing for job interviews related to these subjects."
    }

    # Default response if no predefined response is found
    default_response = "Sorry, I don't have an answer for that question."

    # Get response based on message
    response = faq.get(message, default_response)
    
    return response

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
