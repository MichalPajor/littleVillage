// Kompilator ink korzysta ze współdzielonych statycznych struktur (np. zestawów znaków identyfikatorów)
// i nie jest bezpieczny wątkowo — testy kompilujące fabułę nie mogą biec równolegle.
[assembly: CollectionBehavior(DisableTestParallelization = true)]
