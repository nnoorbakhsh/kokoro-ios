//
//  ReleaseBenchmarkTimerStub.swift
//  KokoroSwift (fork patch)
//
//  MLXUtilsLibrary defines `BenchmarkTimer` only inside `#if DEBUG`, but
//  KokoroTTS.swift calls BenchmarkTimer.reset()/startTimer(_:)/stopTimer(_:)
//  unconditionally. A Release archive therefore fails to compile with
//  "Cannot find 'BenchmarkTimer' in scope". This provides a no-op stand-in for
//  non-DEBUG builds; DEBUG builds continue to use the real MLXUtilsLibrary type.
//
#if !DEBUG
enum BenchmarkTimer {
    static func reset() {}
    static func startTimer(_ id: String) {}
    static func stopTimer(_ id: String) {}
}
#endif
