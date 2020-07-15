# .NET Ecosystem
* .NET was created by Microsoft and released on February 13, 2002

## Components

### Runtimes
* **.NET Framework**
   *  WPF, Windows Form, ASP.NET
   *  It's actually a runtime that also includes 
   *  Oldest runtime in the .NET ecosystem
   *  It is windows centric as it uses Windows specific API
* **.NET Core**
   * ASP.NET Core, UWP
   * Runs on cross platform
   * Runs side by side (many versions supported simultaneously)
   * Small and optimized for performance 
* **Mono for Xamarin**
   * iOS, OSX, Android
   * Cross platform implementation of .NET
   * Develop native applications
   * Uses specific APIs for native platforms

### Library
* .NET Standard 
  * This is a specification for .NET APIs that have implementation for each of the 3 runtimes
  * The above stated three runtimes all implement the .NET standard
  * This allows for the code created in one runtime be executed in the other

### Common Infrastructure
* Languages - C#, Visual Basic, F#
* Build Tools & Compilers - MSBuild, JIT, Garbage collections
* Runtime components - Common Language Runtime (CLR), Core CLR, Roslyn

All these components combined are known as the .NET development platform

___

## Reference 
1. [The .NET Ecosystem: The Big Picture](https://app.pluralsight.com/profile/author/barry-luijbregts)
2. [Barry Luijbregts](https://app.pluralsight.com/profile/author/barry-luijbregts) : [Github](https://github.com/bmaluijb)
3. [Code Samples](https://github.com/bmaluijb/Dot-Net-Ecosystem)