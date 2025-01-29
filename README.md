# Provider Learn Provider

https://github.com/muhammadbilal254/learn_provider_flutter

## Important Topics:

- ChangeNotifier ✅
- Consumer ✅
- ChangeNotifierProvider ✅
- MultiProvider ✅
- Listenable Provider ✅
- ChangeNotifier.dispose
- ValueListenable ✅
- StreamProvider
- FutureProvider
- Future

---

## Q.) Zaroorat kiya pari Provider ko use krne ki jb hamare pass `setState` tha state ko update krne k liye?

#### Ans

Jb hm setState se UI ko update krte he tu wo complete screen ko update krta he jo process/app ko slow krta he aur agr screen me srf ek chote se part ko update krna he tu mujhe zaroorat hi nhi thi complete screen ko update krne ki isi wajah se hm state management ko use krte he

---

## Q. Provider ka kiya use he?

Provider Flutter ki ek official state management library hai, jo tumhare app me state (data) ko manage karne aur efficiently widgets ko update karne me madad karti hai. Ye ek reactive programming model follow karti hai, jisme agar tumhare data me koi change hota hai, toh sirf wahi widgets rebuild hote hain jo is data se linked hote hain.

---

### Provider ka Faida:

- Centralized State Management: Tumhare app ke state ko ek jagah se manage karna easy hota hai.
- Efficient Updates: Sirf wahi widgets update hote hain jo data ke change hone par dependent hote hain, isliye performance achhi hoti hai.
- Scalable: Bade apps ke liye helpful hai, kyunki tumhare app ka data multiple pages par share ho sakta hai.

### Provider ke Main Concepts

- `ChangeNotifier`: Ek class jo tumhare data ko track karti hai aur notify karti hai jab data change hota hai.
- `ChangeNotifierProvider`: Ye widget tumhare ChangeNotifier ko app ke widgets ke saath link karta hai.
  - `create`: jo provider use krna he wo pass krdu
  - `builder`: complete app ki hirarchy ko send krdu like `MaterialApp`
- `Consumer`: Iska use widgets me data ko listen aur update karne ke liye hota hai.

  - Consume ko btana pre ga wo kn se provider ko use kre `Consumer<CounterProvider>` tu ye value ko pass kre ga aaghe
  - Complete Tariqa

  ```dart
    Consumer<Provider>(
            builder: (context, value, child) {
              return Widget();
            },
          )
  ```

  - agr hm ko provider ki value ko update krna he tu hm Provider ka instance banate he

    ```dart
    final counterProvider = Provider.of<CounterProvider>(context, listen: false);

    // listen:false nhi lagaya ty ye methods aur attributes dono ka access de ga.

    // listen false krne se ye srf provider k function ka access de ga, jo help kre ga unneccessary widget ko rebuild krne se
    ```

  - `notifyListener` call to update the UI.

# ValueNotifier and ValueListenableBuilder

- ye jb use hota he jhaa hm ko single page me kisi single element ko update krna hu aur uska kaam srf usi page tk hu
- **ValueNotifier:** Ek single value ko store karta hai aur usme change hone par listeners ko notify karta hai.
- **ValueListenableBuilder:** Ek widget hai jo ValueNotifier ki value ko listen karta hai aur jab value change hoti hai, toh widget ko rebuild karta hai.
