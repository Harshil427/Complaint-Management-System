import { initializeApp } from "https://www.gstatic.com/firebasejs/9.10.0/firebase-app.js";
import {
    getAuth,
} from "https://www.gstatic.com/firebasejs/9.10.0/firebase-auth.js";

import {
    getDatabase,
    set,
    ref,
    update,
    child, get,
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


    FeedBack.addEventListener('click', (e) => {

        const Name = document.getElementById("f_name").value
        const Email = document.getElementById("f_email").value
        const f_phone = document.getElementById("f_phone").value
        const f_message = document.getElementById("f_message").value 

        set(ref(database, "User_Data/" + user.uid + "/FeedBack"), {
            
            FeedBack_Name : Name,
            FeedBack_Email : Email,
            FeedBack_Phone : f_phone,
            FeedBack_message : f_message,
            //profile_picture : imageUrl
        })
            .then((userCredential) => {
                alert("Profile is Updated")
            })

    })

}