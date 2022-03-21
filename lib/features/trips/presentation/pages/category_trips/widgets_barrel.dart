import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:travel_app/features/trips/data/models/category/category_model.dart';
import 'package:travel_app/features/trips/data/models/trip/trip_model.dart';
import 'package:travel_app/features/trips/domain/entities/category/category_entity.dart';
import 'package:travel_app/features/trips/domain/repositories/trips_repository_contract.dart';

import '../../../domain/entities/trip/trip_entity.dart';
import '../../route/inherited_routes_widget.dart';
import '../../route/router.gr.dart';

part './category_trips_screen.dart';
part './widgets/trip_card.dart';
part './widgets/app_bar.dart';
