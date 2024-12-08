<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Company Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background-color: #f4f6f9;
        }
        .dashboard-card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .dashboard-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
        }
        .gradient-text {
            background: linear-gradient(45deg, #6b7280, #3b82f6);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</head>
<body class="flex">
    <!-- Navbar (Left Side) -->
    <%@ include file="companynavbar.jsp" %>

    <!-- Main Content (Right Side) -->
    <main class="flex-1 p-10 bg-white min-h-screen ml-64"> <!-- Added ml-64 to provide margin-left to space it from the navbar -->
        <div class="container mx-auto">
            <!-- Welcome Section -->
            <div class="mb-10">
                <h1 class="text-4xl font-bold gradient-text mb-4">Welcome, ${companyName}!</h1>
                <p class="text-xl text-gray-600">Your recruitment dashboard awaits</p>
            </div>

            <!-- Dashboard Cards -->
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- Jobs Card -->
                <div class="bg-white shadow-lg rounded-xl p-6 dashboard-card border-l-4 border-blue-500">
                    <div class="flex items-center justify-between mb-4">
                        <h2 class="text-2xl font-semibold text-gray-800">Total Jobs Posted</h2>
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-blue-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                        </svg>
                    </div>
                    <p class="text-4xl font-bold text-blue-600">${jobCount}</p>
                    <p class="text-sm text-gray-500 mt-2">Active job listings in your company</p>
                </div>

                <!-- Applicants Card -->
                <div class="bg-white shadow-lg rounded-xl p-6 dashboard-card border-l-4 border-green-500">
                    <div class="flex items-center justify-between mb-4">
                        <h2 class="text-2xl font-semibold text-gray-800">Total Applicants</h2>
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
                        </svg>
                    </div>
                    <p class="text-4xl font-bold text-green-600">${applicantCount}</p>
                    <p class="text-sm text-gray-500 mt-2">Candidates in your talent pipeline</p>
                </div>
            </div>

            <!-- Quick Actions -->
            <div class="mt-10">
                <h2 class="text-2xl font-bold text-gray-800 mb-6">Quick Actions</h2>
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
                    <a href="#" class="bg-blue-50 hover:bg-blue-100 rounded-lg p-4 text-center transition-colors">
                        <div class="flex justify-center mb-3">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-blue-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                            </svg>
                        </div>
                        <p class="text-blue-800">Post New Job</p>
                    </a>
                    <a href="#" class="bg-green-50 hover:bg-green-100 rounded-lg p-4 text-center transition-colors">
                        <div class="flex justify-center mb-3">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-green-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 4H6a2 2 0 00-2 2v12a2 2 0 002 2h12a2 2 0 002-2V6a2 2 0 00-2-2h-2m-4-1v8m0 0l3-3m-3 3L9 8m-5 5h2.586a1 1 0 01.707.293l2.414 2.414a1 1 0 00.707.293h3.172a1 1 0 00.707-.293l2.414-2.414a1 1 0 01.707-.293H20" />
                            </svg>
                        </div>
                        <p class="text-green-800">Review Applications</p>
                    </a>
                    <a href="#" class="bg-purple-50 hover:bg-purple-100 rounded-lg p-4 text-center transition-colors">
                        <div class="flex justify-center mb-3">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 text-purple-600" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                            </svg>
                        </div>
                        <p class="text-purple-800">Manage Interviews</p>
                    </a>
                </div>
            </div>
        </div>
    </main>
</body>
</html>
