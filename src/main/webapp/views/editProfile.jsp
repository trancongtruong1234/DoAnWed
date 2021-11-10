<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        label {
            font-weight: bold;
        }

        th.title {
            font-weight: normal;
        }

        .btn-outline-secondary:hover {
            background-color: green !important;
        }
    </style>
    <title>edit</title>
</head>

<body>
    <div class="container">
        <h1>Edit Profile</h1>
        <hr>
        <table class="table table-bordered">
            <thead class="thead-light">
                <tr>
                    <th class="title">Profile Form Elements</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <form action="#">
                            <div class="form-group">
                                <label class="control-label" for="fname">First name</label>
                                <div class="text">
                                    <input class="form-control" type="text" name="fname" id="fname"
                                        placeholder="Enter the first name" required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Last name</label>
                                <div>
                                    <input class="form-control" type="text" name="lname" id="lname"
                                        placeholder="Enter the last name" required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Email</label>
                                <div>
                                    <input readonly class="form-control-plaintext" type="text" name="email" id="email"
                                        value="email@example.com" />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Phone</label>
                                <div>
                                    <input class="form-control" type="text" name="phone" id="phone"
                                        placeholder="Enter your phone number" required />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="control-label">Description</label>
                                <div>
                                    <textarea class="form-control" name="description" id="description"
                                        rows="5"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <div>
                                    <button type="submit" class="btn btn-outline-secondary">Submit Button</button>
                                    <button type="submit" class="btn btn-outline-secondary">Reset Button</button>
                                </div>
                            </div>


                        </form>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</body>

</html>