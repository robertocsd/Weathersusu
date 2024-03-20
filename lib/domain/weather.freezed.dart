// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) {
  return _WeatherForecast.fromJson(json);
}

/// @nodoc
mixin _$WeatherForecast {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get timezone => throw _privateConstructorUsedError;
  String get timezone_abbreviation => throw _privateConstructorUsedError;
  double get elevation => throw _privateConstructorUsedError;
  int get utc_offset_seconds => throw _privateConstructorUsedError;
  CurrentWeather get current_weather => throw _privateConstructorUsedError;
  HourlyWeatherData get hourly => throw _privateConstructorUsedError;
  DailyWeatherData get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherForecastCopyWith<WeatherForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherForecastCopyWith<$Res> {
  factory $WeatherForecastCopyWith(
          WeatherForecast value, $Res Function(WeatherForecast) then) =
      _$WeatherForecastCopyWithImpl<$Res, WeatherForecast>;
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      String timezone_abbreviation,
      double elevation,
      int utc_offset_seconds,
      CurrentWeather current_weather,
      HourlyWeatherData hourly,
      DailyWeatherData daily});

  $CurrentWeatherCopyWith<$Res> get current_weather;
  $HourlyWeatherDataCopyWith<$Res> get hourly;
  $DailyWeatherDataCopyWith<$Res> get daily;
}

/// @nodoc
class _$WeatherForecastCopyWithImpl<$Res, $Val extends WeatherForecast>
    implements $WeatherForecastCopyWith<$Res> {
  _$WeatherForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? timezone_abbreviation = null,
    Object? elevation = null,
    Object? utc_offset_seconds = null,
    Object? current_weather = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezone_abbreviation: null == timezone_abbreviation
          ? _value.timezone_abbreviation
          : timezone_abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      utc_offset_seconds: null == utc_offset_seconds
          ? _value.utc_offset_seconds
          : utc_offset_seconds // ignore: cast_nullable_to_non_nullable
              as int,
      current_weather: null == current_weather
          ? _value.current_weather
          : current_weather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyWeatherData,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyWeatherData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get current_weather {
    return $CurrentWeatherCopyWith<$Res>(_value.current_weather, (value) {
      return _then(_value.copyWith(current_weather: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HourlyWeatherDataCopyWith<$Res> get hourly {
    return $HourlyWeatherDataCopyWith<$Res>(_value.hourly, (value) {
      return _then(_value.copyWith(hourly: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DailyWeatherDataCopyWith<$Res> get daily {
    return $DailyWeatherDataCopyWith<$Res>(_value.daily, (value) {
      return _then(_value.copyWith(daily: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherForecastImplCopyWith<$Res>
    implements $WeatherForecastCopyWith<$Res> {
  factory _$$WeatherForecastImplCopyWith(_$WeatherForecastImpl value,
          $Res Function(_$WeatherForecastImpl) then) =
      __$$WeatherForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double latitude,
      double longitude,
      String timezone,
      String timezone_abbreviation,
      double elevation,
      int utc_offset_seconds,
      CurrentWeather current_weather,
      HourlyWeatherData hourly,
      DailyWeatherData daily});

  @override
  $CurrentWeatherCopyWith<$Res> get current_weather;
  @override
  $HourlyWeatherDataCopyWith<$Res> get hourly;
  @override
  $DailyWeatherDataCopyWith<$Res> get daily;
}

/// @nodoc
class __$$WeatherForecastImplCopyWithImpl<$Res>
    extends _$WeatherForecastCopyWithImpl<$Res, _$WeatherForecastImpl>
    implements _$$WeatherForecastImplCopyWith<$Res> {
  __$$WeatherForecastImplCopyWithImpl(
      _$WeatherForecastImpl _value, $Res Function(_$WeatherForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? timezone = null,
    Object? timezone_abbreviation = null,
    Object? elevation = null,
    Object? utc_offset_seconds = null,
    Object? current_weather = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_$WeatherForecastImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezone_abbreviation: null == timezone_abbreviation
          ? _value.timezone_abbreviation
          : timezone_abbreviation // ignore: cast_nullable_to_non_nullable
              as String,
      elevation: null == elevation
          ? _value.elevation
          : elevation // ignore: cast_nullable_to_non_nullable
              as double,
      utc_offset_seconds: null == utc_offset_seconds
          ? _value.utc_offset_seconds
          : utc_offset_seconds // ignore: cast_nullable_to_non_nullable
              as int,
      current_weather: null == current_weather
          ? _value.current_weather
          : current_weather // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as HourlyWeatherData,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as DailyWeatherData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherForecastImpl
    with DiagnosticableTreeMixin
    implements _WeatherForecast {
  _$WeatherForecastImpl(
      {required this.latitude,
      required this.longitude,
      required this.timezone,
      required this.timezone_abbreviation,
      required this.elevation,
      required this.utc_offset_seconds,
      required this.current_weather,
      required this.hourly,
      required this.daily});

  factory _$WeatherForecastImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherForecastImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String timezone;
  @override
  final String timezone_abbreviation;
  @override
  final double elevation;
  @override
  final int utc_offset_seconds;
  @override
  final CurrentWeather current_weather;
  @override
  final HourlyWeatherData hourly;
  @override
  final DailyWeatherData daily;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeatherForecast(latitude: $latitude, longitude: $longitude, timezone: $timezone, timezone_abbreviation: $timezone_abbreviation, elevation: $elevation, utc_offset_seconds: $utc_offset_seconds, current_weather: $current_weather, hourly: $hourly, daily: $daily)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeatherForecast'))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('timezone', timezone))
      ..add(DiagnosticsProperty('timezone_abbreviation', timezone_abbreviation))
      ..add(DiagnosticsProperty('elevation', elevation))
      ..add(DiagnosticsProperty('utc_offset_seconds', utc_offset_seconds))
      ..add(DiagnosticsProperty('current_weather', current_weather))
      ..add(DiagnosticsProperty('hourly', hourly))
      ..add(DiagnosticsProperty('daily', daily));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherForecastImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezone_abbreviation, timezone_abbreviation) ||
                other.timezone_abbreviation == timezone_abbreviation) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.utc_offset_seconds, utc_offset_seconds) ||
                other.utc_offset_seconds == utc_offset_seconds) &&
            (identical(other.current_weather, current_weather) ||
                other.current_weather == current_weather) &&
            (identical(other.hourly, hourly) || other.hourly == hourly) &&
            (identical(other.daily, daily) || other.daily == daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      timezone,
      timezone_abbreviation,
      elevation,
      utc_offset_seconds,
      current_weather,
      hourly,
      daily);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      __$$WeatherForecastImplCopyWithImpl<_$WeatherForecastImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherForecastImplToJson(
      this,
    );
  }
}

abstract class _WeatherForecast implements WeatherForecast {
  factory _WeatherForecast(
      {required final double latitude,
      required final double longitude,
      required final String timezone,
      required final String timezone_abbreviation,
      required final double elevation,
      required final int utc_offset_seconds,
      required final CurrentWeather current_weather,
      required final HourlyWeatherData hourly,
      required final DailyWeatherData daily}) = _$WeatherForecastImpl;

  factory _WeatherForecast.fromJson(Map<String, dynamic> json) =
      _$WeatherForecastImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get timezone;
  @override
  String get timezone_abbreviation;
  @override
  double get elevation;
  @override
  int get utc_offset_seconds;
  @override
  CurrentWeather get current_weather;
  @override
  HourlyWeatherData get hourly;
  @override
  DailyWeatherData get daily;
  @override
  @JsonKey(ignore: true)
  _$$WeatherForecastImplCopyWith<_$WeatherForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _CurrentWeather.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  String get time => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  double get windspeed => throw _privateConstructorUsedError;
  int get winddirection => throw _privateConstructorUsedError;
  int get is_day => throw _privateConstructorUsedError;
  int get weathercode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {String time,
      double temperature,
      double windspeed,
      int winddirection,
      int is_day,
      int weathercode});
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? windspeed = null,
    Object? winddirection = null,
    Object? is_day = null,
    Object? weathercode = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windspeed: null == windspeed
          ? _value.windspeed
          : windspeed // ignore: cast_nullable_to_non_nullable
              as double,
      winddirection: null == winddirection
          ? _value.winddirection
          : winddirection // ignore: cast_nullable_to_non_nullable
              as int,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentWeatherImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentWeatherImplCopyWith(_$CurrentWeatherImpl value,
          $Res Function(_$CurrentWeatherImpl) then) =
      __$$CurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String time,
      double temperature,
      double windspeed,
      int winddirection,
      int is_day,
      int weathercode});
}

/// @nodoc
class __$$CurrentWeatherImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentWeatherImpl>
    implements _$$CurrentWeatherImplCopyWith<$Res> {
  __$$CurrentWeatherImplCopyWithImpl(
      _$CurrentWeatherImpl _value, $Res Function(_$CurrentWeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? windspeed = null,
    Object? winddirection = null,
    Object? is_day = null,
    Object? weathercode = null,
  }) {
    return _then(_$CurrentWeatherImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      windspeed: null == windspeed
          ? _value.windspeed
          : windspeed // ignore: cast_nullable_to_non_nullable
              as double,
      winddirection: null == winddirection
          ? _value.winddirection
          : winddirection // ignore: cast_nullable_to_non_nullable
              as int,
      is_day: null == is_day
          ? _value.is_day
          : is_day // ignore: cast_nullable_to_non_nullable
              as int,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherImpl
    with DiagnosticableTreeMixin
    implements _CurrentWeather {
  _$CurrentWeatherImpl(
      {required this.time,
      required this.temperature,
      required this.windspeed,
      required this.winddirection,
      required this.is_day,
      required this.weathercode});

  factory _$CurrentWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherImplFromJson(json);

  @override
  final String time;
  @override
  final double temperature;
  @override
  final double windspeed;
  @override
  final int winddirection;
  @override
  final int is_day;
  @override
  final int weathercode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentWeather(time: $time, temperature: $temperature, windspeed: $windspeed, winddirection: $winddirection, is_day: $is_day, weathercode: $weathercode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentWeather'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('windspeed', windspeed))
      ..add(DiagnosticsProperty('winddirection', winddirection))
      ..add(DiagnosticsProperty('is_day', is_day))
      ..add(DiagnosticsProperty('weathercode', weathercode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.windspeed, windspeed) ||
                other.windspeed == windspeed) &&
            (identical(other.winddirection, winddirection) ||
                other.winddirection == winddirection) &&
            (identical(other.is_day, is_day) || other.is_day == is_day) &&
            (identical(other.weathercode, weathercode) ||
                other.weathercode == weathercode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, time, temperature, windspeed,
      winddirection, is_day, weathercode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      __$$CurrentWeatherImplCopyWithImpl<_$CurrentWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeather implements CurrentWeather {
  factory _CurrentWeather(
      {required final String time,
      required final double temperature,
      required final double windspeed,
      required final int winddirection,
      required final int is_day,
      required final int weathercode}) = _$CurrentWeatherImpl;

  factory _CurrentWeather.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherImpl.fromJson;

  @override
  String get time;
  @override
  double get temperature;
  @override
  double get windspeed;
  @override
  int get winddirection;
  @override
  int get is_day;
  @override
  int get weathercode;
  @override
  @JsonKey(ignore: true)
  _$$CurrentWeatherImplCopyWith<_$CurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HourlyWeatherData _$HourlyWeatherDataFromJson(Map<String, dynamic> json) {
  return _HourlyWeatherData.fromJson(json);
}

/// @nodoc
mixin _$HourlyWeatherData {
  List<String> get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature_2m => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relative_humidity_2m => throw _privateConstructorUsedError;
  List<double> get precipitation => throw _privateConstructorUsedError;
  List<int> get weathercode => throw _privateConstructorUsedError;
  List<int> get cloudcover => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed_10m')
  List<double> get wind_speed_10m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HourlyWeatherDataCopyWith<HourlyWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyWeatherDataCopyWith<$Res> {
  factory $HourlyWeatherDataCopyWith(
          HourlyWeatherData value, $Res Function(HourlyWeatherData) then) =
      _$HourlyWeatherDataCopyWithImpl<$Res, HourlyWeatherData>;
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') List<int> relative_humidity_2m,
      List<double> precipitation,
      List<int> weathercode,
      List<int> cloudcover,
      @JsonKey(name: 'wind_speed_10m') List<double> wind_speed_10m});
}

/// @nodoc
class _$HourlyWeatherDataCopyWithImpl<$Res, $Val extends HourlyWeatherData>
    implements $HourlyWeatherDataCopyWith<$Res> {
  _$HourlyWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature_2m = null,
    Object? relative_humidity_2m = null,
    Object? precipitation = null,
    Object? weathercode = null,
    Object? cloudcover = null,
    Object? wind_speed_10m = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature_2m: null == temperature_2m
          ? _value.temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relative_humidity_2m: null == relative_humidity_2m
          ? _value.relative_humidity_2m
          : relative_humidity_2m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as List<int>,
      wind_speed_10m: null == wind_speed_10m
          ? _value.wind_speed_10m
          : wind_speed_10m // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyWeatherDataImplCopyWith<$Res>
    implements $HourlyWeatherDataCopyWith<$Res> {
  factory _$$HourlyWeatherDataImplCopyWith(_$HourlyWeatherDataImpl value,
          $Res Function(_$HourlyWeatherDataImpl) then) =
      __$$HourlyWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      @JsonKey(name: 'temperature_2m') List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m') List<int> relative_humidity_2m,
      List<double> precipitation,
      List<int> weathercode,
      List<int> cloudcover,
      @JsonKey(name: 'wind_speed_10m') List<double> wind_speed_10m});
}

/// @nodoc
class __$$HourlyWeatherDataImplCopyWithImpl<$Res>
    extends _$HourlyWeatherDataCopyWithImpl<$Res, _$HourlyWeatherDataImpl>
    implements _$$HourlyWeatherDataImplCopyWith<$Res> {
  __$$HourlyWeatherDataImplCopyWithImpl(_$HourlyWeatherDataImpl _value,
      $Res Function(_$HourlyWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature_2m = null,
    Object? relative_humidity_2m = null,
    Object? precipitation = null,
    Object? weathercode = null,
    Object? cloudcover = null,
    Object? wind_speed_10m = null,
  }) {
    return _then(_$HourlyWeatherDataImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      temperature_2m: null == temperature_2m
          ? _value._temperature_2m
          : temperature_2m // ignore: cast_nullable_to_non_nullable
              as List<double>,
      relative_humidity_2m: null == relative_humidity_2m
          ? _value._relative_humidity_2m
          : relative_humidity_2m // ignore: cast_nullable_to_non_nullable
              as List<int>,
      precipitation: null == precipitation
          ? _value._precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      weathercode: null == weathercode
          ? _value._weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as List<int>,
      cloudcover: null == cloudcover
          ? _value._cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as List<int>,
      wind_speed_10m: null == wind_speed_10m
          ? _value._wind_speed_10m
          : wind_speed_10m // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourlyWeatherDataImpl
    with DiagnosticableTreeMixin
    implements _HourlyWeatherData {
  _$HourlyWeatherDataImpl(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final List<int> relative_humidity_2m,
      required final List<double> precipitation,
      required final List<int> weathercode,
      required final List<int> cloudcover,
      @JsonKey(name: 'wind_speed_10m')
      required final List<double> wind_speed_10m})
      : _time = time,
        _temperature_2m = temperature_2m,
        _relative_humidity_2m = relative_humidity_2m,
        _precipitation = precipitation,
        _weathercode = weathercode,
        _cloudcover = cloudcover,
        _wind_speed_10m = wind_speed_10m;

  factory _$HourlyWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourlyWeatherDataImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<double> _temperature_2m;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature_2m {
    if (_temperature_2m is EqualUnmodifiableListView) return _temperature_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature_2m);
  }

  final List<int> _relative_humidity_2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relative_humidity_2m {
    if (_relative_humidity_2m is EqualUnmodifiableListView)
      return _relative_humidity_2m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relative_humidity_2m);
  }

  final List<double> _precipitation;
  @override
  List<double> get precipitation {
    if (_precipitation is EqualUnmodifiableListView) return _precipitation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation);
  }

  final List<int> _weathercode;
  @override
  List<int> get weathercode {
    if (_weathercode is EqualUnmodifiableListView) return _weathercode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathercode);
  }

  final List<int> _cloudcover;
  @override
  List<int> get cloudcover {
    if (_cloudcover is EqualUnmodifiableListView) return _cloudcover;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cloudcover);
  }

  final List<double> _wind_speed_10m;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get wind_speed_10m {
    if (_wind_speed_10m is EqualUnmodifiableListView) return _wind_speed_10m;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wind_speed_10m);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourlyWeatherData(time: $time, temperature_2m: $temperature_2m, relative_humidity_2m: $relative_humidity_2m, precipitation: $precipitation, weathercode: $weathercode, cloudcover: $cloudcover, wind_speed_10m: $wind_speed_10m)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourlyWeatherData'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('temperature_2m', temperature_2m))
      ..add(DiagnosticsProperty('relative_humidity_2m', relative_humidity_2m))
      ..add(DiagnosticsProperty('precipitation', precipitation))
      ..add(DiagnosticsProperty('weathercode', weathercode))
      ..add(DiagnosticsProperty('cloudcover', cloudcover))
      ..add(DiagnosticsProperty('wind_speed_10m', wind_speed_10m));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyWeatherDataImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._temperature_2m, _temperature_2m) &&
            const DeepCollectionEquality()
                .equals(other._relative_humidity_2m, _relative_humidity_2m) &&
            const DeepCollectionEquality()
                .equals(other._precipitation, _precipitation) &&
            const DeepCollectionEquality()
                .equals(other._weathercode, _weathercode) &&
            const DeepCollectionEquality()
                .equals(other._cloudcover, _cloudcover) &&
            const DeepCollectionEquality()
                .equals(other._wind_speed_10m, _wind_speed_10m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_temperature_2m),
      const DeepCollectionEquality().hash(_relative_humidity_2m),
      const DeepCollectionEquality().hash(_precipitation),
      const DeepCollectionEquality().hash(_weathercode),
      const DeepCollectionEquality().hash(_cloudcover),
      const DeepCollectionEquality().hash(_wind_speed_10m));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyWeatherDataImplCopyWith<_$HourlyWeatherDataImpl> get copyWith =>
      __$$HourlyWeatherDataImplCopyWithImpl<_$HourlyWeatherDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HourlyWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _HourlyWeatherData implements HourlyWeatherData {
  factory _HourlyWeatherData(
      {required final List<String> time,
      @JsonKey(name: 'temperature_2m')
      required final List<double> temperature_2m,
      @JsonKey(name: 'relative_humidity_2m')
      required final List<int> relative_humidity_2m,
      required final List<double> precipitation,
      required final List<int> weathercode,
      required final List<int> cloudcover,
      @JsonKey(name: 'wind_speed_10m')
      required final List<double> wind_speed_10m}) = _$HourlyWeatherDataImpl;

  factory _HourlyWeatherData.fromJson(Map<String, dynamic> json) =
      _$HourlyWeatherDataImpl.fromJson;

  @override
  List<String> get time;
  @override
  @JsonKey(name: 'temperature_2m')
  List<double> get temperature_2m;
  @override
  @JsonKey(name: 'relative_humidity_2m')
  List<int> get relative_humidity_2m;
  @override
  List<double> get precipitation;
  @override
  List<int> get weathercode;
  @override
  List<int> get cloudcover;
  @override
  @JsonKey(name: 'wind_speed_10m')
  List<double> get wind_speed_10m;
  @override
  @JsonKey(ignore: true)
  _$$HourlyWeatherDataImplCopyWith<_$HourlyWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailyWeatherData _$DailyWeatherDataFromJson(Map<String, dynamic> json) {
  return _DailyWeatherData.fromJson(json);
}

/// @nodoc
mixin _$DailyWeatherData {
  List<String> get time => throw _privateConstructorUsedError;
  List<String> get sunrise => throw _privateConstructorUsedError;
  List<String> get sunset => throw _privateConstructorUsedError;
  List<double> get precipitation_sum => throw _privateConstructorUsedError;
  List<double> get apparent_temperature_max =>
      throw _privateConstructorUsedError;
  List<double> get apparent_temperature_min =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyWeatherDataCopyWith<DailyWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyWeatherDataCopyWith<$Res> {
  factory $DailyWeatherDataCopyWith(
          DailyWeatherData value, $Res Function(DailyWeatherData) then) =
      _$DailyWeatherDataCopyWithImpl<$Res, DailyWeatherData>;
  @useResult
  $Res call(
      {List<String> time,
      List<String> sunrise,
      List<String> sunset,
      List<double> precipitation_sum,
      List<double> apparent_temperature_max,
      List<double> apparent_temperature_min});
}

/// @nodoc
class _$DailyWeatherDataCopyWithImpl<$Res, $Val extends DailyWeatherData>
    implements $DailyWeatherDataCopyWith<$Res> {
  _$DailyWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitation_sum = null,
    Object? apparent_temperature_max = null,
    Object? apparent_temperature_min = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>,
      precipitation_sum: null == precipitation_sum
          ? _value.precipitation_sum
          : precipitation_sum // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparent_temperature_max: null == apparent_temperature_max
          ? _value.apparent_temperature_max
          : apparent_temperature_max // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparent_temperature_min: null == apparent_temperature_min
          ? _value.apparent_temperature_min
          : apparent_temperature_min // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyWeatherDataImplCopyWith<$Res>
    implements $DailyWeatherDataCopyWith<$Res> {
  factory _$$DailyWeatherDataImplCopyWith(_$DailyWeatherDataImpl value,
          $Res Function(_$DailyWeatherDataImpl) then) =
      __$$DailyWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      List<String> sunrise,
      List<String> sunset,
      List<double> precipitation_sum,
      List<double> apparent_temperature_max,
      List<double> apparent_temperature_min});
}

/// @nodoc
class __$$DailyWeatherDataImplCopyWithImpl<$Res>
    extends _$DailyWeatherDataCopyWithImpl<$Res, _$DailyWeatherDataImpl>
    implements _$$DailyWeatherDataImplCopyWith<$Res> {
  __$$DailyWeatherDataImplCopyWithImpl(_$DailyWeatherDataImpl _value,
      $Res Function(_$DailyWeatherDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? precipitation_sum = null,
    Object? apparent_temperature_max = null,
    Object? apparent_temperature_min = null,
  }) {
    return _then(_$DailyWeatherDataImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sunrise: null == sunrise
          ? _value._sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sunset: null == sunset
          ? _value._sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as List<String>,
      precipitation_sum: null == precipitation_sum
          ? _value._precipitation_sum
          : precipitation_sum // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparent_temperature_max: null == apparent_temperature_max
          ? _value._apparent_temperature_max
          : apparent_temperature_max // ignore: cast_nullable_to_non_nullable
              as List<double>,
      apparent_temperature_min: null == apparent_temperature_min
          ? _value._apparent_temperature_min
          : apparent_temperature_min // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyWeatherDataImpl
    with DiagnosticableTreeMixin
    implements _DailyWeatherData {
  _$DailyWeatherDataImpl(
      {required final List<String> time,
      required final List<String> sunrise,
      required final List<String> sunset,
      required final List<double> precipitation_sum,
      required final List<double> apparent_temperature_max,
      required final List<double> apparent_temperature_min})
      : _time = time,
        _sunrise = sunrise,
        _sunset = sunset,
        _precipitation_sum = precipitation_sum,
        _apparent_temperature_max = apparent_temperature_max,
        _apparent_temperature_min = apparent_temperature_min;

  factory _$DailyWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyWeatherDataImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<String> _sunrise;
  @override
  List<String> get sunrise {
    if (_sunrise is EqualUnmodifiableListView) return _sunrise;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunrise);
  }

  final List<String> _sunset;
  @override
  List<String> get sunset {
    if (_sunset is EqualUnmodifiableListView) return _sunset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sunset);
  }

  final List<double> _precipitation_sum;
  @override
  List<double> get precipitation_sum {
    if (_precipitation_sum is EqualUnmodifiableListView)
      return _precipitation_sum;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_precipitation_sum);
  }

  final List<double> _apparent_temperature_max;
  @override
  List<double> get apparent_temperature_max {
    if (_apparent_temperature_max is EqualUnmodifiableListView)
      return _apparent_temperature_max;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparent_temperature_max);
  }

  final List<double> _apparent_temperature_min;
  @override
  List<double> get apparent_temperature_min {
    if (_apparent_temperature_min is EqualUnmodifiableListView)
      return _apparent_temperature_min;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparent_temperature_min);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DailyWeatherData(time: $time, sunrise: $sunrise, sunset: $sunset, precipitation_sum: $precipitation_sum, apparent_temperature_max: $apparent_temperature_max, apparent_temperature_min: $apparent_temperature_min)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DailyWeatherData'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('sunrise', sunrise))
      ..add(DiagnosticsProperty('sunset', sunset))
      ..add(DiagnosticsProperty('precipitation_sum', precipitation_sum))
      ..add(DiagnosticsProperty(
          'apparent_temperature_max', apparent_temperature_max))
      ..add(DiagnosticsProperty(
          'apparent_temperature_min', apparent_temperature_min));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyWeatherDataImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(other._sunrise, _sunrise) &&
            const DeepCollectionEquality().equals(other._sunset, _sunset) &&
            const DeepCollectionEquality()
                .equals(other._precipitation_sum, _precipitation_sum) &&
            const DeepCollectionEquality().equals(
                other._apparent_temperature_max, _apparent_temperature_max) &&
            const DeepCollectionEquality().equals(
                other._apparent_temperature_min, _apparent_temperature_min));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_sunrise),
      const DeepCollectionEquality().hash(_sunset),
      const DeepCollectionEquality().hash(_precipitation_sum),
      const DeepCollectionEquality().hash(_apparent_temperature_max),
      const DeepCollectionEquality().hash(_apparent_temperature_min));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyWeatherDataImplCopyWith<_$DailyWeatherDataImpl> get copyWith =>
      __$$DailyWeatherDataImplCopyWithImpl<_$DailyWeatherDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _DailyWeatherData implements DailyWeatherData {
  factory _DailyWeatherData(
          {required final List<String> time,
          required final List<String> sunrise,
          required final List<String> sunset,
          required final List<double> precipitation_sum,
          required final List<double> apparent_temperature_max,
          required final List<double> apparent_temperature_min}) =
      _$DailyWeatherDataImpl;

  factory _DailyWeatherData.fromJson(Map<String, dynamic> json) =
      _$DailyWeatherDataImpl.fromJson;

  @override
  List<String> get time;
  @override
  List<String> get sunrise;
  @override
  List<String> get sunset;
  @override
  List<double> get precipitation_sum;
  @override
  List<double> get apparent_temperature_max;
  @override
  List<double> get apparent_temperature_min;
  @override
  @JsonKey(ignore: true)
  _$$DailyWeatherDataImplCopyWith<_$DailyWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HourlyForecast {
  DateTime get time => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;
  int get relativeHumidity => throw _privateConstructorUsedError;
  double get windSpeed => throw _privateConstructorUsedError;
  double get precipitation => throw _privateConstructorUsedError;
  int get weathercode => throw _privateConstructorUsedError;
  int get cloudcover => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HourlyForecastCopyWith<HourlyForecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HourlyForecastCopyWith<$Res> {
  factory $HourlyForecastCopyWith(
          HourlyForecast value, $Res Function(HourlyForecast) then) =
      _$HourlyForecastCopyWithImpl<$Res, HourlyForecast>;
  @useResult
  $Res call(
      {DateTime time,
      double temperature,
      int relativeHumidity,
      double windSpeed,
      double precipitation,
      int weathercode,
      int cloudcover});
}

/// @nodoc
class _$HourlyForecastCopyWithImpl<$Res, $Val extends HourlyForecast>
    implements $HourlyForecastCopyWith<$Res> {
  _$HourlyForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? relativeHumidity = null,
    Object? windSpeed = null,
    Object? precipitation = null,
    Object? weathercode = null,
    Object? cloudcover = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      relativeHumidity: null == relativeHumidity
          ? _value.relativeHumidity
          : relativeHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HourlyForecastImplCopyWith<$Res>
    implements $HourlyForecastCopyWith<$Res> {
  factory _$$HourlyForecastImplCopyWith(_$HourlyForecastImpl value,
          $Res Function(_$HourlyForecastImpl) then) =
      __$$HourlyForecastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime time,
      double temperature,
      int relativeHumidity,
      double windSpeed,
      double precipitation,
      int weathercode,
      int cloudcover});
}

/// @nodoc
class __$$HourlyForecastImplCopyWithImpl<$Res>
    extends _$HourlyForecastCopyWithImpl<$Res, _$HourlyForecastImpl>
    implements _$$HourlyForecastImplCopyWith<$Res> {
  __$$HourlyForecastImplCopyWithImpl(
      _$HourlyForecastImpl _value, $Res Function(_$HourlyForecastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? temperature = null,
    Object? relativeHumidity = null,
    Object? windSpeed = null,
    Object? precipitation = null,
    Object? weathercode = null,
    Object? cloudcover = null,
  }) {
    return _then(_$HourlyForecastImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
      relativeHumidity: null == relativeHumidity
          ? _value.relativeHumidity
          : relativeHumidity // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      precipitation: null == precipitation
          ? _value.precipitation
          : precipitation // ignore: cast_nullable_to_non_nullable
              as double,
      weathercode: null == weathercode
          ? _value.weathercode
          : weathercode // ignore: cast_nullable_to_non_nullable
              as int,
      cloudcover: null == cloudcover
          ? _value.cloudcover
          : cloudcover // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HourlyForecastImpl
    with DiagnosticableTreeMixin
    implements _HourlyForecast {
  _$HourlyForecastImpl(
      {required this.time,
      required this.temperature,
      required this.relativeHumidity,
      required this.windSpeed,
      required this.precipitation,
      required this.weathercode,
      required this.cloudcover});

  @override
  final DateTime time;
  @override
  final double temperature;
  @override
  final int relativeHumidity;
  @override
  final double windSpeed;
  @override
  final double precipitation;
  @override
  final int weathercode;
  @override
  final int cloudcover;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HourlyForecast(time: $time, temperature: $temperature, relativeHumidity: $relativeHumidity, windSpeed: $windSpeed, precipitation: $precipitation, weathercode: $weathercode, cloudcover: $cloudcover)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HourlyForecast'))
      ..add(DiagnosticsProperty('time', time))
      ..add(DiagnosticsProperty('temperature', temperature))
      ..add(DiagnosticsProperty('relativeHumidity', relativeHumidity))
      ..add(DiagnosticsProperty('windSpeed', windSpeed))
      ..add(DiagnosticsProperty('precipitation', precipitation))
      ..add(DiagnosticsProperty('weathercode', weathercode))
      ..add(DiagnosticsProperty('cloudcover', cloudcover));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourlyForecastImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.relativeHumidity, relativeHumidity) ||
                other.relativeHumidity == relativeHumidity) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.precipitation, precipitation) ||
                other.precipitation == precipitation) &&
            (identical(other.weathercode, weathercode) ||
                other.weathercode == weathercode) &&
            (identical(other.cloudcover, cloudcover) ||
                other.cloudcover == cloudcover));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, temperature,
      relativeHumidity, windSpeed, precipitation, weathercode, cloudcover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HourlyForecastImplCopyWith<_$HourlyForecastImpl> get copyWith =>
      __$$HourlyForecastImplCopyWithImpl<_$HourlyForecastImpl>(
          this, _$identity);
}

abstract class _HourlyForecast implements HourlyForecast {
  factory _HourlyForecast(
      {required final DateTime time,
      required final double temperature,
      required final int relativeHumidity,
      required final double windSpeed,
      required final double precipitation,
      required final int weathercode,
      required final int cloudcover}) = _$HourlyForecastImpl;

  @override
  DateTime get time;
  @override
  double get temperature;
  @override
  int get relativeHumidity;
  @override
  double get windSpeed;
  @override
  double get precipitation;
  @override
  int get weathercode;
  @override
  int get cloudcover;
  @override
  @JsonKey(ignore: true)
  _$$HourlyForecastImplCopyWith<_$HourlyForecastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
