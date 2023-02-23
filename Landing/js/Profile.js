import { initializeApp } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-app.js";
import { getAuth } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-auth.js";

import {
  getDatabase,
  set,
  ref,
  update,
  child,
  get,
} from "https://www.gstatic.com/firebasejs/9.10.0/firebase-database.js";

const firebaseConfig = {
  apiKey: "AIzaSyCkqpmU0ZNB-WIbEt4sDvzvdXZQ6h28h_E",
  authDomain: "sgp-ii.firebaseapp.com",
  databaseURL: "https://sgp-ii-default-rtdb.firebaseio.com",
  projectId: "sgp-ii",
  storageBucket: "sgp-ii.appspot.com",
  messagingSenderId: "424652572048",
  appId: "1:424652572048:web:15dc97dda987752730df15",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const user = auth.currentUser;
const database = getDatabase();

if (user !== null) {
  console.log("Authent");


  const dbRef = ref(getDatabase());

  get(child(dbRef, 'Users_data/'+ user.uid))
    .then((snapshot) => {
      if (snapshot.exists()) {
        console.log(snapshot.val());
      } else {
        console.log("No data available");
      }
    })
    .catch((error) => {
      console.error(error);
    });

}

if (user !== null) {
  console.log("hi");

  Update.addEventListener("click", (e) => {

    const FirstName = document.getElementById("displayName").value
    const lastName = document.getElementById("Lastname").value
    const Phone_number = document.getElementById("phone").value
    const Address = document.getElementById("Address").value
    const email = document.getElementById("inputEmail4").value
    const pincode = document.getElementById("PinCode").value

    set(ref(database, "User_Data/" + user.uid), {
      FirstName: FirstName,
      email: email,
      lastName: lastName,
      Phone_number: Phone_number,
      Address: Address,
      pincode: pincode,
      //profile_picture : imageUrl
    }).then((userCredential) => {
      alert("Profile is Updated");
    });
  });
}
