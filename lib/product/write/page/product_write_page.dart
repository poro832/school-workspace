import 'package:dantol_market_app/common/app_font.dart';
import 'package:dantol_market_app/common/compenents/checkBox.dart' as custom;
import 'package:dantol_market_app/common/compenents/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductWritePage extends StatelessWidget {
  const ProductWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: GestureDetector(
        onTap: Get.back,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/svg/icons/close.svg'),
        ),
      ),
      centerTitle: true,
      title: const AppFont(
        '내 물건 팔기',
        fontWeight: FontWeight.bold,
        size : 18,
      ),
      actions:[
        GestureDetector(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.only(top: 20.0, right: 25),
            child: AppFont(
              '완료',
              color: Color(0xffED7738),
              fontWeight: FontWeight.bold,
              size: 16,
            )
          ),
        ),
      ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _PhotoSelectedView(),
            _divder,
            _ProductTitleView(),
            _divder,
            _CategorySelectView(),
            _divder,
            _PriceSettingView(),
            _divder,
            _ProductDescription(),
            Container(
              height: 5,
              color: Color.fromARGB(255, 12, 12, 15),
            ),
            _HopeTradeLocationMap(),
          ],
        ),
      ),
    );
  }
    Widget get _divder => const Divider(
    color : Color(0xff3C3C3E),
    indent: 25,
    endIndent: 25,
  );
}
class _ProductTitleView extends StatelessWidget{
  const _ProductTitleView();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.symmetric(horizontal: 25),
      child: CommonTextField(
        hintText: '글 제목',
        onChanged: (value){},
        hintColor: const Color(0xff6D7179), TextInputType: TextInputType.text,
      ),
    );
  }
}

class _PhotoSelectedView extends StatelessWidget {
  const _PhotoSelectedView();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
      child: Row(children: [
        _photoSelectIcon(),
        Expanded(child: _selectedImageList()),
      ],
      ),
    );
  }
  Widget _photoSelectIcon(){
    return GestureDetector(
      onTap: () async {},
      child: Container(
        width: 77,
        height: 77,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xff42464E)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svg/icons/camera.svg'),
            const SizedBox(height: 5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppFont(
                  '0',
                  size: 13,
                  color: Color(0xff868B95),
                ),
                AppFont(
                  '/10',
                  size: 13,
                  color: Color(0xff868B95),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
   Widget _selectedImageList() {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      height: 77,
      child: Obx(
        () => ListView.builder( 
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: SizedBox(
                      width: 67,
                      height: 67,
                      child: FutureBuilder(
                        future: controller.selectedImages[index].file,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            return Image.file(
                              snapshot.data!,
                              fit: BoxFit.cover,
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: GestureDetector(
                    onTap: () {
                      controller.deleteImage(index);
                    },
                    child: SvgPicture.asset('assets/svg/icons/remove.svg'),
                  ),
                )
              ],
            );
          },
          itemCount: controller.selectedImages.length,
        ),
      ),
    );
  }
}
class _CategorySelectView extends StatelessWidget {
  const _CategorySelectView();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: GestureDetector(
        onTap: (){},
        behavior: HitTestBehavior.translucent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppFont(
              '카테고리 선택',
              size: 16,
              color: Colors.white,
            ),
            SvgPicture.asset('assets/svg/icons/right.svg'),
          ],
        ),
      ),
    );
  }
}
class _PriceSettingView extends StatelessWidget {
  const _PriceSettingView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding : const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(
            child: CommonTextField(
              hintText: '₩ 가격(선택 사항)',
              hintColor: const Color(0xff6D7179),
              TextInputType : TextInputType.number,
              onChanged: (value){},
            ),
          ),
          custom.Checkbox(
            label: '나눔',
            isChecked: true,
            toggleCallBack: (){},
          )
        ],
      ),
    );
  }
}
class _ProductDescription extends StatelessWidget{
  const _ProductDescription();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 25),
      child: TextField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            color: Color(0xff6D7179),
          ),
          hintText: '금곡동에 올릴 게시글 내용을 작성해주세요.\n(판매 금지 물품은 게시가 제한될 수 있어요.)',
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide.none,
            ),
          ),
          keyboardType: TextInputType.multiline,
          maxLines: 10,
          onChanged: (v) {},
        ),
    );
  }
}
class _HopeTradeLocationMap extends StatelessWidget{
  const _HopeTradeLocationMap();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: GestureDetector(
        onTap: (){},
        behavior: HitTestBehavior.translucent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppFont(
              '희망 거래 장소',
              size: 16,
              color: Colors.white,
            ),
            Row(
              children: [
                const AppFont(
                  '장소 선택',
                  size: 13,
                  color: Color(0xff6D7179),
                ),
                SvgPicture.asset('assets/svg/icons/right.svg'),
              ],
            ),
          ],
      ),
      ),
    );
  }
}