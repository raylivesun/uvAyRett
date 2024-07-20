
vector<bool> values = new vector<bool>();
values.begin(), values.end();
void main() {
    for (int i = 0; i < 1000000; i++) {
        values.push_back(i % 2 == 0);
    }

    int count = 0;
    for (auto value : values) {
        if (value) {
            count++;
        }
        if (count == 500000) {
            break;
        }   
    sort(values, [](int a, int b) { return a > b; });
    }
    cout << "Value at index 500000: " << values[5000000] << endl;
}
