
//------------------------------------------------------------------------------
// Compiler Version Information
//------------------------------------------------------------------------------


(*

- Feature Directives

  The features directives are used to test if the compiler supports specific
  features, such as method overloading, and adjust the sources accordingly. Use
  of these directives is preferred over the use of the DELPHI and COMPILER
  directives.

  Directive                      Description
  ------------------------------------------------------------------------------
  SUPPORTS_DEPRECATED            Compiler supports the deprecated directive (D6+/BCB6+)
  SUPPORTS_FOR_IN                Compiler supports for in loops (D9+)
  SUPPORTS_LONGWORD              Compiler supports the LongWord type (unsigned 32 bit) (D4+/BCB4+)
  HAS_UNIT_RTLCONSTS             Unit RTLConsts exists (D6+/BCB6+/FPC)
  HAS_UNIT_TYPES                 Unit Types exists (D6+/BCB6+/FPC)
  HAS_UNITSCOPE                  Unit scope names are prepended to unit names in the VCL-FMX-RTL libraries.

*)

{$IFDEF FPC}

//------------------------------------------------------------------------------
// FreePascal
//------------------------------------------------------------------------------

  {$MODE DELPHI}
  {$ASMMODE Intel}

  {$DEFINE HAS_UNIT_RTLCONSTS}

  {$DEFINE SUPPORTS_DEFAULTPARAMS}
  {$DEFINE SUPPORTS_DEPRECATED}
  {$DEFINE SUPPORTS_DEPRECATED_WARNINGS}
  {$DEFINE SUPPORTS_ENUMVALUE}
  {$DEFINE SUPPORTS_FOR_IN}
  {$DEFINE SUPPORTS_INT64}
  {$DEFINE SUPPORTS_LONGWORD}
  {$DEFINE SUPPORTS_OVERLOAD}
  {$DEFINE SUPPORTS_UNICODE_STRING} // FPC has UnicodeString like Unicode Delphi 2009.
  {$DEFINE SUPPORTS_VARARGS}


{$ELSE FPC}

  //------------------------------------------------------------------------------
  // Borland / CodeGear / Embarcadero compilers
  //------------------------------------------------------------------------------

  {$IFDEF Win32}
    {$IFNDEF MSWINDOWS}
      {$DEFINE MSWINDOWS}
    {$ENDIF}
  {$ENDIF}

  // VERXXX to COMPILER_X, DELPHI_X and BCB_X mappings

  {$IFDEF VER80}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_1}
    {$DEFINE COMPILER_1}
  {$ENDIF}

  {$IFDEF VER90}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_2}
    {$DEFINE COMPILER_2}
  {$ENDIF}

  {$IFDEF VER93}
    {$DEFINE BCB}
    {$DEFINE BCB_1}
    {$DEFINE COMPILER_2} // C++ Builder v1 compiler is really v2
  {$ENDIF}

  {$IFDEF VER100}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_3}
    {$DEFINE COMPILER_3}
  {$ENDIF}

  {$IFDEF VER110}
    {$DEFINE BCB}
    {$DEFINE BCB_3}
    {$DEFINE COMPILER_35}
  {$ENDIF}

  {$IFDEF VER125}
    {$DEFINE BCB}
    {$DEFINE BCB_4}
    {$DEFINE COMPILER_4}
  {$ENDIF}

  {$IFDEF VER120}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_4}
    {$DEFINE COMPILER_4}
  {$ENDIF}

  {$IFDEF VER130}
    {$IFDEF BCB}
      {$DEFINE BCB_5}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_5}
    {$ENDIF}
    {$DEFINE COMPILER_5}
  {$ENDIF}

  {$IFDEF VER140}
    {$IFDEF BCB}
      {$DEFINE BCB_6}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_6}
    {$ENDIF}
    {$DEFINE COMPILER_6}
  {$ENDIF}

  {$IFDEF VER150}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_7}
    {$DEFINE COMPILER_7}
  {$ENDIF}

  {$IFDEF VER160}
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_8}
    {$DEFINE COMPILER_8}
  {$ENDIF}

  {$IFDEF VER170} // BDS 3, Delphi 2005
    {$DEFINE DELPHI}
    {$DEFINE DELPHI_9}
    {$DEFINE COMPILER_9}
  {$ENDIF}

  {$IFDEF VER180} // RAD Studio 5, Delphi 2007
    {$IFDEF VER185}
      {$IFDEF BCB}
        {$DEFINE BCB_11}
      {$ELSE}
        {$DEFINE DELPHI}
        {$DEFINE DELPHI_11}
      {$ENDIF}
      {$DEFINE COMPILER_11}
    {$ELSE VER180}
      {$IFDEF BCB}
        {$DEFINE BCB_10}
      {$ELSE}
        {$DEFINE DELPHI}
        {$DEFINE DELPHI_10}
      {$ENDIF}
      {$DEFINE COMPILER_10}
    {$ENDIF}
  {$ENDIF}

  {$IFDEF VER200} // RAD Studio 2009
    {$IFDEF BCB}
      {$DEFINE BCB_12}
    {$ELSE}
       {$DEFINE DELPHI}
       {$DEFINE DELPHI_12}
    {$ENDIF BCB}
    {$DEFINE COMPILER_12}
  {$ENDIF VER200}

  {$IFDEF VER210} // RAD Studio 2010
    {$IFDEF BCB}
      {$DEFINE BCB_14}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_14}
    {$ENDIF BCB}
    {$DEFINE COMPILER_14}
  {$ENDIF VER210}

  {$IFDEF VER220} // RAD Studio XE
    {$IFDEF BCB}
      {$DEFINE BCB_15}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_15}
    {$ENDIF BCB}
    {$DEFINE COMPILER_15}
  {$ENDIF VER220}

  {$IFDEF VER230} // RAD Studio XE2
    {$IFDEF BCB}
      {$DEFINE BCB_16}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_16}
    {$ENDIF BCB}
    {$DEFINE COMPILER_16}
  {$ENDIF VER230}

  {$IFDEF VER240} // RAD Studio XE3
    {$IFDEF BCB}
      {$DEFINE BCB_17}
    {$ELSE}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_17}
    {$ENDIF BCB}
    {$DEFINE COMPILER_17}
  {$ENDIF VER230}

  // CLR - DotNet

  {$IFDEF CLR}

    {$IFDEF VER160}
      {$DEFINE DELPHI}
      {$DEFINE DELPHI_8}
      {$DEFINE COMPILER_8}
    {$ENDIF}

  {$ENDIF CLR}

  // Linux

  {$IFDEF LINUX}

    {$IFDEF VER150}
      {$DEFINE KYLIX}
      {$DEFINE KYLIX_3}
      {$DEFINE COMPILER_7}
    {$ENDIF}

    {$IFDEF VER140}
      {$DEFINE KYLIX}
      {$DEFINE KYLIX_2}
      {$DEFINE COMPILER_6}
    {$ENDIF}

    // KYLIXX_UP from KYLIXX mappings

    {$IFDEF KYLIX_3} {$DEFINE KYLIX_3_UP} {$ENDIF}
    {$IFDEF KYLIX_2} {$DEFINE KYLIX_2_UP} {$ENDIF}
    {$IFDEF KYLIX_1} {$DEFINE KYLIX_1_UP} {$ENDIF}

    // KYLIX_X_UP from KYLIX_X_UP mappings

    {$IFDEF KYLIX_3_UP} {$DEFINE KYLIX_2_UP} {$ENDIF}
    {$IFDEF KYLIX_2_UP} {$DEFINE KYLIX_1_UP} {$ENDIF}

  {$ENDIF Linux}

  // DELPHI_X_UP from DELPHI_X mappings

  {$IFDEF DELPHI_17} {$DEFINE DELPHI_17_UP} {$ENDIF}
  {$IFDEF DELPHI_16} {$DEFINE DELPHI_16_UP} {$ENDIF}
  {$IFDEF DELPHI_15} {$DEFINE DELPHI_15_UP} {$ENDIF}
  {$IFDEF DELPHI_14} {$DEFINE DELPHI_14_UP} {$ENDIF}
  {$IFDEF DELPHI_12} {$DEFINE DELPHI_12_UP} {$ENDIF}
  {$IFDEF DELPHI_11} {$DEFINE DELPHI_11_UP} {$ENDIF}
  {$IFDEF DELPHI_10} {$DEFINE DELPHI_10_UP} {$ENDIF}
  {$IFDEF DELPHI_9}  {$DEFINE DELPHI_9_UP}  {$ENDIF}
  {$IFDEF DELPHI_8}  {$DEFINE DELPHI_8_UP}  {$ENDIF}
  {$IFDEF DELPHI_7}  {$DEFINE DELPHI_7_UP}  {$ENDIF}
  {$IFDEF DELPHI_6}  {$DEFINE DELPHI_6_UP}  {$ENDIF}
  {$IFDEF DELPHI_5}  {$DEFINE DELPHI_5_UP}  {$ENDIF}
  {$IFDEF DELPHI_4}  {$DEFINE DELPHI_4_UP}  {$ENDIF}
  {$IFDEF DELPHI_3}  {$DEFINE DELPHI_3_UP}  {$ENDIF}
  {$IFDEF DELPHI_2}  {$DEFINE DELPHI_2_UP}  {$ENDIF}
  {$IFDEF DELPHI_1}  {$DEFINE DELPHI_1_UP}  {$ENDIF}

  // DELPHI_X_UP from DELPHI_X_UP mappings

  {$IFDEF DELPHI_17_UP} {$DEFINE DELPHI_16_UP} {$ENDIF}
  {$IFDEF DELPHI_16_UP} {$DEFINE DELPHI_15_UP} {$ENDIF}
  {$IFDEF DELPHI_15_UP} {$DEFINE DELPHI_14_UP} {$ENDIF}
  {$IFDEF DELPHI_14_UP} {$DEFINE DELPHI_12_UP} {$ENDIF}
  {$IFDEF DELPHI_12_UP} {$DEFINE DELPHI_11_UP} {$ENDIF}
  {$IFDEF DELPHI_11_UP} {$DEFINE DELPHI_10_UP} {$ENDIF}
  {$IFDEF DELPHI_10_UP} {$DEFINE DELPHI_9_UP}  {$ENDIF}
  {$IFDEF DELPHI_9_UP}  {$DEFINE DELPHI_8_UP}  {$ENDIF}
  {$IFDEF DELPHI_8_UP}  {$DEFINE DELPHI_7_UP}  {$ENDIF}
  {$IFDEF DELPHI_7_UP}  {$DEFINE DELPHI_6_UP}  {$ENDIF}
  {$IFDEF DELPHI_6_UP}  {$DEFINE DELPHI_5_UP}  {$ENDIF}
  {$IFDEF DELPHI_5_UP}  {$DEFINE DELPHI_4_UP}  {$ENDIF}
  {$IFDEF DELPHI_4_UP}  {$DEFINE DELPHI_3_UP}  {$ENDIF}
  {$IFDEF DELPHI_3_UP}  {$DEFINE DELPHI_2_UP}  {$ENDIF}
  {$IFDEF DELPHI_2_UP}  {$DEFINE DELPHI_1_UP}  {$ENDIF}

  // BCB_X_UP from BCB_X mappings

  {$IFDEF BCB_17} {$DEFINE BCB_17_UP} {$ENDIF}
  {$IFDEF BCB_16} {$DEFINE BCB_16_UP} {$ENDIF}
  {$IFDEF BCB_15} {$DEFINE BCB_15_UP} {$ENDIF}
  {$IFDEF BCB_14} {$DEFINE BCB_14_UP} {$ENDIF}
  {$IFDEF BCB_12} {$DEFINE BCB_12_UP} {$ENDIF}
  {$IFDEF BCB_11} {$DEFINE BCB_11_UP} {$ENDIF}
  {$IFDEF BCB_10} {$DEFINE BCB_10_UP} {$ENDIF}
  {$IFDEF BCB_6}  {$DEFINE BCB_6_UP}  {$ENDIF}
  {$IFDEF BCB_5}  {$DEFINE BCB_5_UP}  {$ENDIF}
  {$IFDEF BCB_4}  {$DEFINE BCB_4_UP}  {$ENDIF}
  {$IFDEF BCB_3}  {$DEFINE BCB_3_UP}  {$ENDIF}
  {$IFDEF BCB_1}  {$DEFINE BCB_1_UP}  {$ENDIF}

  // BCBX_UP from BCBX_UP mappings

  {$IFDEF BCB_17_UP} {$DEFINE BCB_16_UP} {$ENDIF}
  {$IFDEF BCB_16_UP} {$DEFINE BCB_15_UP} {$ENDIF}
  {$IFDEF BCB_15_UP} {$DEFINE BCB_14_UP} {$ENDIF}
  {$IFDEF BCB_14_UP} {$DEFINE BCB_12_UP} {$ENDIF}
  {$IFDEF BCB_12_UP} {$DEFINE BCB_11_UP} {$ENDIF}
  {$IFDEF BCB_11_UP} {$DEFINE BCB_10_UP} {$ENDIF}
  {$IFDEF BCB_10_UP} {$DEFINE BCB_6_UP}  {$ENDIF}
  {$IFDEF BCB_6_UP}  {$DEFINE BCB_5_UP}  {$ENDIF}
  {$IFDEF BCB_5_UP}  {$DEFINE BCB_4_UP}  {$ENDIF}
  {$IFDEF BCB_4_UP}  {$DEFINE BCB_3_UP}  {$ENDIF}
  {$IFDEF BCB_3_UP}  {$DEFINE BCB_1_UP}  {$ENDIF}

  // COMPILER_X_UP from COMPILER_X mappings

  {$IFDEF COMPILER_17} {$DEFINE COMPILER_17_UP} {$ENDIF}
  {$IFDEF COMPILER_16} {$DEFINE COMPILER_16_UP} {$ENDIF}
  {$IFDEF COMPILER_15} {$DEFINE COMPILER_15_UP} {$ENDIF}
  {$IFDEF COMPILER_14} {$DEFINE COMPILER_14_UP} {$ENDIF}
  {$IFDEF COMPILER_12} {$DEFINE COMPILER_12_UP} {$ENDIF}
  {$IFDEF COMPILER_11} {$DEFINE COMPILER_11_UP} {$ENDIF}
  {$IFDEF COMPILER_10} {$DEFINE COMPILER_10_UP} {$ENDIF}
  {$IFDEF COMPILER_9}  {$DEFINE COMPILER_9_UP}  {$ENDIF}
  {$IFDEF COMPILER_8}  {$DEFINE COMPILER_8_UP}  {$ENDIF}
  {$IFDEF COMPILER_7}  {$DEFINE COMPILER_7_UP}  {$ENDIF}
  {$IFDEF COMPILER_6}  {$DEFINE COMPILER_6_UP}  {$ENDIF}
  {$IFDEF COMPILER_5}  {$DEFINE COMPILER_5_UP}  {$ENDIF}
  {$IFDEF COMPILER_4}  {$DEFINE COMPILER_4_UP}  {$ENDIF}
  {$IFDEF COMPILER_35} {$DEFINE COMPILER_35_UP} {$ENDIF}
  {$IFDEF COMPILER_3}  {$DEFINE COMPILER_3_UP}  {$ENDIF}
  {$IFDEF COMPILER_2}  {$DEFINE COMPILER_2_UP}  {$ENDIF}
  {$IFDEF COMPILER_1}  {$DEFINE COMPILER_1_UP}  {$ENDIF}

  // COMPIlER_X_UP from COMPILER_X_UP mappings

  {$IFDEF COMPILER_17_UP} {$DEFINE COMPILER_16_UP} {$ENDIF}
  {$IFDEF COMPILER_16_UP} {$DEFINE COMPILER_15_UP} {$ENDIF}
  {$IFDEF COMPILER_15_UP} {$DEFINE COMPILER_14_UP} {$ENDIF}
  {$IFDEF COMPILER_14_UP} {$DEFINE COMPILER_12_UP} {$ENDIF}
  {$IFDEF COMPILER_12_UP} {$DEFINE COMPILER_11_UP} {$ENDIF}
  {$IFDEF COMPILER_11_UP} {$DEFINE COMPILER_10_UP} {$ENDIF}
  {$IFDEF COMPILER_10_UP} {$DEFINE COMPILER_9_UP}  {$ENDIF}
  {$IFDEF COMPILER_9_UP}  {$DEFINE COMPILER_8_UP}  {$ENDIF}
  {$IFDEF COMPILER_8_UP}  {$DEFINE COMPILER_7_UP}  {$ENDIF}
  {$IFDEF COMPILER_7_UP}  {$DEFINE COMPILER_6_UP}  {$ENDIF}
  {$IFDEF COMPILER_6_UP}  {$DEFINE COMPILER_5_UP}  {$ENDIF}
  {$IFDEF COMPILER_5_UP}  {$DEFINE COMPILER_4_UP}  {$ENDIF}
  {$IFDEF COMPILER_4_UP}  {$DEFINE COMPILER_35_UP} {$ENDIF}
  {$IFDEF COMPILER_35_UP} {$DEFINE COMPILER_3_UP}  {$ENDIF}
  {$IFDEF COMPILER_3_UP}  {$DEFINE COMPILER_2_UP}  {$ENDIF}
  {$IFDEF COMPILER_2_UP}  {$DEFINE COMPILER_1_UP}  {$ENDIF}

  // Map COMPILER_X_UP to friendly feature names

  {$IFDEF COMPILER_4_UP}
    {$DEFINE SUPPORTS_DEFAULTPARAMS}
    {$DEFINE SUPPORTS_INT64}
    {$DEFINE SUPPORTS_LONGWORD}
    {$DEFINE SUPPORTS_OVERLOAD}
  {$ENDIF COMPILER_4_UP}

  {$IFDEF COMPILER_6_UP}
    {$DEFINE HAS_UNIT_RTLCONSTS}
    {$DEFINE HAS_UNIT_TYPES}
    {$DEFINE HAS_UNIT_VARIANTS}
    {$DEFINE SUPPORTS_DEPRECATED}
    {$DEFINE SUPPORTS_DEPRECATED_WARNINGS}
    {$DEFINE SUPPORTS_ENUMVALUE}
    {$DEFINE SUPPORTS_VARARGS}
  {$ENDIF COMPILER_6_UP}

  {$IFDEF COMPILER_9_UP}
    {$DEFINE SUPPORTS_FOR_IN}
    {$DEFINE SUPPORTS_INLINE}
  {$ENDIF COMPILER_9_UP}

  {$IFDEF COMPILER_12_UP}
    {$IFNDEF CLR}
      {$DEFINE SUPPORTS_UNICODE_STRING}
    {$ENDIF CLR}
  {$ENDIF COMPILER_12_UP}

  {$IFDEF COMPILER_16_UP}
    {$DEFINE HAS_UNITSCOPE}
  {$ENDIF COMPILER_16_UP}

  { Test for 64 bit compiler. }
  {$IFDEF CPUX64}
    {$DEFINE CPU64} // Compiler target is 64 bit, rather than 32 bit.
  {$ELSE CPUX64}
    { Assume 32-bit compiler by default. }
    {$DEFINE CPUX86} // CPU is an Intel 386 or later on any platform.
    {$DEFINE CPU32} // Compiler target is 32 bit, rather than 64 bit.
  {$ENDIF CPUX64}

{$ENDIF FPC}

//------------------------------------------------------------------------------
// General Compiler Settings
//------------------------------------------------------------------------------

{$A+}
(* The $A directive controls alignment of fields in record types.

   In the {$A+} state, fields in record types that are declared without the
   packed modifier are aligned. In the {$A-} state, fields in record types
   are never aligned. Record type field alignment is described in the Object
   Pascal Language Guide.

   Regardless of the state of the $A directive, variables and typed constants
   are always aligned for optimal access. In the {$A+} state, execution
   will be faster. *)

{$B-}
(* The $B directive switches between the two different models of code
   generation for the and and or Boolean operators.

   In the {$B+} state, the compiler generates code for complete Boolean
   expression evaluation. This means that every operand of a Boolean
   expression built from the and and or operators is guaranteed to be
   evaluated, even when the result of the entire expression is already known.

   In the {$B-} state, the compiler generates code for short-circuit Boolean
   expression evaluation, which means that evaluation stops as soon as the
   result of the entire expression becomes evident in left to right order
   of evaluation. *)

{$H+}
(* The $H directive controls the meaning of the reserved word string when
   used alone in a type declaration. The generic type string can represent
   either a long, dynamically-allocated string (the fundamental type AnsiString)
   or a short, statically-allocated string (the fundamental type ShortString).

   By default {$H+}, Delphi defines the generic string type to be the long
   AnsiString. All components in the Visual Component Library are compiled
   in this state. If you write components, they should also use long strings,
   as should any code that receives data from VCL string-type properties.

   The {$H-} state is mostly useful for using code from versions of Object
   Pascal that used short strings by default. You can locally override the
   meaning of string-type definitions to ensure generation of short strings.
   You can also change declarations of short string types to string[255] or
   ShortString, which are unambiguous and independent of the $H setting. *)

{$J-}
(* The $J directive controls whether typed constants can be modified or not.
   In the {$J+} state, typed constants can be modified, and are in essence
   initialized variables. In the {$J-} state, typed constants are truly
   constant, and any attempt to modify a typed constant causes the compiler
   to report an error. *)

{$T+}
(* The $T directive controls the types of pointer values generated by the
   @ operator and the compatibility of pointer types.

   In the {$T-} state, the result of the @ operator is always an untyped
   pointer (Pointer) that is compatible with all other pointer types.
   When @ is applied to a variable reference in the {$T+} state, the result
   is a typed pointer that is compatible only with Pointer and with other
   pointers to the type of the variable. *)

{$X+}
(* The $X directive enables or disables Delphi's extended syntax. *)

{$IFDEF BCB_3_UP}
  {$OBJEXPORTALL ON}
{$ENDIF}
(* C++ Builder requires this if you use Delphi components in run-time packages. *)

{$IFDEF COMPILER_6_UP}
  {$WARN SYMBOL_PLATFORM OFF}
  {$WARN UNIT_PLATFORM OFF}
{$ENDIF}
(* Disables platform warnings for Delphi 6 and later. *)

{$IFDEF COMPILER_7_UP}
  {$WARN UNSAFE_CAST OFF}
  {$WARN UNSAFE_CODE OFF}
  {$WARN UNSAFE_TYPE OFF}
{$ENDIF}
(* Disables .NET warnings for Delphi 7 and later. *)

{ }