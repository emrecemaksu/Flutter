import 'package:base/forBloc/bloc/games_bloc.dart';
import 'package:base/main.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

BlocProvider(
  create: (BuildContext context) => GamesBloc(),
  child: const HomePage(),
)