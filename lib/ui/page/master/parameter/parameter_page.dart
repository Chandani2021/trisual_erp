import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trishul_erp/api/api.dart';
import 'package:trishul_erp/constants/app_colors.dart';
import 'package:trishul_erp/constants/app_icons.dart';
import 'package:trishul_erp/constants/app_strings.dart';
import 'package:trishul_erp/constants/app_styles.dart';
import 'package:trishul_erp/model/parameter_list_model.dart';
import 'package:trishul_erp/ui/page/master/parameter/parameter_list_tile.dart';
import 'package:trishul_erp/view/toast.dart';

import 'package:trishul_erp/widgets/widget_appbar_with_back_button.dart';

class ParameterPage extends StatefulWidget {
  static const String routeName = '/parameter';

  const ParameterPage({Key? key}) : super(key: key);

  @override
  State<ParameterPage> createState() => _ParameterPageState();
}

class _ParameterPageState extends State<ParameterPage> {
  List<AllParameters> data = [];
  bool _isLoading = false;

  Future parameterList(BuildContext context) async {
    setState(() {
      _isLoading = true;
    });
    return await API.parameterList(context).then((response) {
      setState(() {
        _isLoading = false;
      });
      if (response!.code == '200') {
        setState(() {
          data = response.data!.allParameters!;
          print('dataaa' + data.length.toString());
        });
      } else if (response.code == '401') {
        Toast.show(context, response.message!);
      }
    }).onError((error, stackTrace) {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  void initState() {
    if (mounted) {
      parameterList(context);
    }
    super.initState();
  }

  void _deleteParameter(int index) async {
    if (mounted) {
      setState(() {
        data.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var appbarTitle = Get.arguments;
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWithBackButton(title: appbarTitle),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: AppColors.greyColor, width: 1),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                AppIcons.icSeachWhite,
                                width: 20,
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: TextFormField(
                                    textInputAction: TextInputAction.search,
                                    decoration: AppStyles
                                        .searchTextFieldInputDecoration),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator.adaptive())
                      : MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const BouncingScrollPhysics(),
                                itemCount: data.length,
                                itemBuilder: (ctx, index) {
                                  return ParameterListTile(
                                    deleteCallback: () {
                                      _deleteParameter(index);
                                    },
                                    editCallback: () {},
                                    parameterItem: data[index],
                                  );
                                }),
                          ),
                        ),
                )
              ],
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: FloatingActionButton.extended(
                backgroundColor: AppColors.greyColor,
                onPressed: () {
                  /* showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const DialogAddMachine(
                        title: '+91',
                      );
                    },
                  ); */
                },
                icon: const Icon(Icons.add),
                label: Text(AppStrings.strAddParameter),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
