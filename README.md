# ActiveLearning
Active Learning of Abstract System Models from Traces:

An active learning framework for generating concise abstractions of a system implementation, instrumented to track a set of system variables.
Generated abstractions admit all system traces defined over the set of system variables.

## Dependencies
1. [CBMC v5.34](https://github.com/diffblue/cbmc) (install and add to PATH)
2. [CVC5 v0.0.5](https://github.com/cvc5/cvc5/releases/tag/cvc5-0.0.5) (install and add to PATH)
3. [Trace2Model](https://github.com/natasha-jeppu/Trace2Model) (available within this repository)
4. Python 3.9

## Tool Setup
1. Install dependecies for the Trace2Model tool
~~~
pip3 install numpy pygraphviz transitions termcolor sympy
~~~
The `pygraphviz` module requires `graphviz` to be installed. Kindly refer to the [PyGraphviz documentation](https://pygraphviz.github.io/documentation/stable/install.html) for installation instructions on different platforms.

2. Install [CBMC v5.34](https://github.com/diffblue/cbmc/releases/tag/cbmc-5.34.0) and [CVC5 v0.0.5](https://github.com/cvc5/cvc5/releases/tag/cvc5-0.0.5) and add to PATH. The binaries are available in their respective repositories linked here.

## Usage
Clone the repository
~~~
git clone https://github.com/natasha-jeppu/ActiveLearning.git
cd ActiveLearning
~~~

A set of benchmarks is available [here](https://ora.ox.ac.uk/objects/uuid:f1b19a1a-f3c1-4eca-8755-73706c0af383).
Download the benchmark set into the `benchmarks` folder and unzip.</br>
To run any benchmark `<bench_name>` in `<bench_parent_folder>`:
1. Navigate to the benchmark folder
~~~
cd ActiveLearning
cd benchmarks/<bench_parent_folder>/<bench_name>
~~~
2. Run active model learning to generate abstraction
~~~
python3 run_model.py 1
~~~

Generated models for each iteration of learning can be found in the `models` folder inside each benchmark.

