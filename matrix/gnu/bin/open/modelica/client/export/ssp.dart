import 'dart:async';

class SppStream<T> extends Stream {
  @override
  StreamSubscription listen(void Function(dynamic event)? onData,
      {Function? onError, void Function()? onDone, bool? cancelOnError}) {
    // implement listen
    throw UnimplementedError();
  }
}

class SppStreamProvider<T> {
  late SppStream<T> stream;
  late StreamSubscription subscription;
  late bool isDisposed;
  late bool isSubscribed;
  late bool isListening;
  late bool isError;
}

class SppStreamController<T> {
  late SppStreamProvider<T> provider;
  late StreamSubscription subscription;
  late bool isDisposed;
  late bool isSubscribed;
  late bool isListening;
  late bool isError;
  late T lastValue;
  late Error? error;
  late void Function(T value) onData;
  late void Function()? onError;
  late void Function()? onDone;
  late bool cancelOnError;
  late bool hasValue;
  late bool hasError;
  late bool isClosed;
  late bool isBroadcasting;
  late bool isPaused;
  late int? backpressure;
  late int? pendingEvents;
  late int? pendingBytes;
  late int? pendingCancelRequests;
  late int? pendingPauseRequests;
  late int? pendingResumeRequests;
  late int? pendingClearRequests;
  late int? pendingFlushRequests;
  late int? pendingErrorRequests;
  late int? pendingDataRequests;
  late int? pendingDoneRequests;
  late int? pendingStartRequests;
  late int? pendingStopRequests;
  late int? pendingListenRequests;
  late int? pendingUnlistenRequests;
  late int? pendingCancelAllRequests;
  late int? pendingPauseAllRequests;
  late int? pendingResumeAllRequests;
  late int? pendingClearAllRequests;
  late int? pendingFlushAllRequests;
  late int? pendingErrorAllRequests;
  
  int get stream => Object.hashAll(objects);
  
  Iterable<Object?> get objects => values;
  
  get values => null;
  
  void add(int i) {}
  
  void addError(Exception exception) {}
  
  void dispose() {}
}

void main() {
  // Example usage of SppStreamController
  SppStreamController<int> controller = SppStreamController<int>();

  // Create a SppStreamProvider
  SppStreamProvider<int> provider = SppStreamProvider<int>();
  provider.stream = controller.stream as SppStream<int>;

  // Emit a value
  controller.add(8512);

  // Emit an error
  controller.addError(Exception('An error occurred'));

  // Unsubscribe from the stream
  controller.subscription.cancel();

  // Dispose of the controller
  controller.dispose();
}

