<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accounting Basics</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
            color: #333;
        }
        h1 {
            color: #0056b3;
        }
        .container {
            max-width: 800px;
            margin: auto;
            padding: 20px;
            background: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        canvas {
            max-width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Introduction to Accounting</h1>
        <p>Accounting is the process of recording, summarizing, analyzing, and reporting financial transactions of a business. It helps organizations track income, expenses, and financial performance.</p>
        
        <h2>Key Accounting Principles</h2>
        <ul>
            <li><strong>Accrual Principle:</strong> Transactions are recorded when they occur, not when cash is exchanged.</li>
            <li><strong>Matching Principle:</strong> Expenses are recorded in the same period as the related revenues.</li>
            <li><strong>Conservatism Principle:</strong> Financial statements should err on the side of caution when estimating values.</li>
            <li><strong>Going Concern Principle:</strong> Assumes the business will continue operating indefinitely.</li>
        </ul>

        <h2>Revenue vs. Expenses Chart</h2>
        <canvas id="accountingChart"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('accountingChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['January', 'February', 'March', 'April', 'May'],
                datasets: [
                    {
                        label: 'Revenue ($)',
                        data: [1200, 1500, 1700, 1600, 1900],
                        backgroundColor: 'rgba(0, 123, 255, 0.5)'
                    },
                    {
                        label: 'Expenses ($)',
                        data: [800, 900, 1100, 1000, 1200],
                        backgroundColor: 'rgba(255, 99, 132, 0.5)'
                    }
                ]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
