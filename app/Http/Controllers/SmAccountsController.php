<?php

namespace App\Http\Controllers;

use App\SmItemSell;
use App\SmAddIncome;
use App\SmAddExpense;
use App\SmFeesMaster;
use App\ApiBaseMethod;
use App\SmFeesPayment;
use App\SmItemReceive;
use App\SmHrPayrollGenerate;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Support\Facades\Auth;

class SmAccountsController extends Controller
{
    public function __construct()
	{
        $this->middleware('PM');
        // User::checkAuth();
	}

    public function searchAccount()
    {
        try {
            return view('backEnd.accounts.search_income');
        } catch (\Exception $e) {
            Toastr::error('Operation Failed', 'Failed');
            return redirect()->back();
        }
    }



    public function searchAccountReportByDate(Request $request)
    {
        $request->validate([
            'type' => 'required'
        ]);
        try {
            $date_from = date('Y-m-d', strtotime($request->date_from));
            $date_to = date('Y-m-d', strtotime($request->date_to));
            $date_time_from = date('Y-m-d H:i:s', strtotime($request->date_from));
            $date_time_to = date('Y-m-d H:i:s', strtotime($request->date_to . ' ' . '23:59:00'));
            $type_id = $request->type;
            $from_date = $request->date_from;
            $to_date = $request->date_to;
            if ($request->type == "In") {
                if ($request->filtering_income == "all") {
                    $dormitory = 0;
                    $transport = 0;
                    $add_incomes = SmAddIncome::where('date', '>=', $date_from)->where('date', '<=', $date_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->get();
                    $fees_payments = SmFeesPayment::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
                    $item_sells = SmItemSell::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
                } elseif ($request->filtering_income == "sell") {
                    $dormitory = 0;
                    $transport = 0;
                    $add_incomes = [];
                    $fees_payments = '';
                    $item_sells = SmItemSell::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
                } elseif ($request->filtering_income == "fees") {
                    $dormitory = 0;
                    $add_incomes = [];
                    $transport = 0;
                    $item_sells = '';
                    $fees_payments = SmFeesPayment::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
                } elseif ($request->filtering_income == "dormitory") {
                    $add_incomes = [];
                    $fees_payments = '';
                    $item_sells = '';
                    $transport = 0;
                    $fees_masters = SmFeesMaster::select('fees_type_id')->Where('fees_group_id', 2)->where('school_id',Auth::user()->school_id)->get();
                    $dormitory = 0;
                    foreach ($fees_masters as $fees_master) {
                        $dormitory = $dormitory + SmFeesPayment::where('fees_type_id', $fees_master->fees_type_id)->where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
                    }
                } else {
                    $add_incomes = [];
                    $fees_payments = '';
                    $item_sells = '';
                    $dormitory = 0;
                    $fees_masters = SmFeesMaster::select('fees_type_id')->Where('fees_group_id', 1)->where('school_id',Auth::user()->school_id)->get();
                    $transport = 0;
                    foreach ($fees_masters as $fees_master) {
                        $transport = $transport + SmFeesPayment::where('fees_type_id', $fees_master->fees_type_id)->where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
                    }
                }

                return view('backEnd.accounts.search_income', compact('add_incomes', 'fees_payments', 'item_sells', 'dormitory', 'transport', 'type_id', 'from_date', 'to_date'));
            } else {
                if ($request->filtering_expense == "all") {
                    $add_expenses = SmAddExpense::where('date', '>=', $date_from)->where('date', '<=', $date_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->get();
                    $item_receives = SmItemReceive::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
                    $payroll_payments = SmHrPayrollGenerate::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('payroll_status', 'P')->where('school_id',Auth::user()->school_id)->sum('net_salary');
                } elseif ($request->filtering_expense == "receive") {
                    $add_expenses = [];
                    $item_receives = SmItemReceive::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
                    $payroll_payments = '';
                } else {
                    $add_expenses = [];
                    $item_receives = '';
                    $payroll_payments = SmItemReceive::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
                }
                return view('backEnd.accounts.search_income', compact('add_expenses', 'item_receives', 'payroll_payments', 'type_id', 'from_date', 'to_date'));
            }
        } catch (\Exception $e) {
            Toastr::error('Echec de l\'operation', 'Echec');
            return redirect()->back();
        }
    }


    public function searchExpense()
    {
        try {
            return view('backEnd.accounts.search_expense');
        } catch (\Exception $e) {
            Toastr::error('Operation Failed', 'Failed');
            return redirect()->back();
        }
    }

    public function searchExpenseReportByDate(Request $request)
    {
        try {
            date_default_timezone_set("Asia/Dhaka");

            $date_from = date('Y-m-d', strtotime($request->date_from));
            $date_to = date('Y-m-d', strtotime($request->date_to));

            $date_time_from = date('Y-m-d H:i:s', strtotime($request->date_from));
            $date_time_to = date('Y-m-d H:i:s', strtotime($request->date_to . ' ' . '23:59:00'));

            $add_expenses = SmAddExpense::where('date', '>=', $date_from)->where('date', '<=', $date_to)->where('active_status', 1)->get();

            $item_receives = SmItemReceive::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
            $payroll_payments = SmHrPayrollGenerate::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('payroll_status', 'P')->where('school_id',Auth::user()->school_id)->sum('net_salary');
            return view('backEnd.accounts.search_expense', compact('add_expenses', 'item_receives', 'payroll_payments'));
        } catch (\Exception $e) {
            Toastr::error('Echec de l\'operation', 'Echec');
            return redirect()->back();
        }
    }

    public function profit(Request $request)
    {
        try {
            $add_incomes = SmAddIncome::where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
            $fees_payments = SmFeesPayment::where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
            $item_sells = SmItemSell::where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');

            $total_income = $add_incomes + $fees_payments + $item_sells;

            $add_expenses = SmAddExpense::where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
            $item_receives = SmItemReceive::where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
            $payroll_payments = SmHrPayrollGenerate::where('active_status', 1)->where('payroll_status', 'P')->where('school_id',Auth::user()->school_id)->sum('net_salary');

            $total_expense = $add_expenses + $item_receives + $payroll_payments;

            if (ApiBaseMethod::checkUrl($request->fullUrl())) {
                $data = [];
                $data['total_income'] = $total_income;
                $data['total_expense'] = $total_expense;
                return ApiBaseMethod::sendResponse($data, null);
            }
            return view('backEnd.accounts.profit', compact('total_income', 'total_expense'));
        } catch (\Exception $e) {
            Toastr::error('Echec de l\'operation', 'Echec');
            return redirect()->back();
        }
    }

    public function searchProfitByDate(Request $request)
    {
        try {
            date_default_timezone_set("Asia/Dhaka");

            $date_from = date('Y-m-d', strtotime($request->date_from));
            $date_to = date('Y-m-d', strtotime($request->date_to));

            $date_time_from = date('Y-m-d H:i:s', strtotime($request->date_from));
            $date_time_to = date('Y-m-d H:i:s', strtotime($request->date_to . ' ' . '23:59:00'));
            // Income
            $add_incomes = SmAddIncome::where('date', '>=', $date_from)->where('date', '<=', $date_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
            $fees_payments = SmFeesPayment::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
            $item_sells = SmItemSell::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
            $total_income = $add_incomes + $fees_payments + $item_sells;



            // expense
            $add_expenses = SmAddExpense::where('date', '>=', $date_from)->where('date', '<=', $date_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('amount');
            $item_receives = SmItemReceive::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('school_id',Auth::user()->school_id)->sum('total_paid');
            $payroll_payments = SmHrPayrollGenerate::where('updated_at', '>=', $date_time_from)->where('updated_at', '<=', $date_time_to)->where('active_status', 1)->where('payroll_status', 'P')->where('school_id',Auth::user()->school_id)->sum('net_salary');


            // total profit
            $total_expense = $add_expenses + $item_receives + $payroll_payments;

            if (ApiBaseMethod::checkUrl($request->fullUrl())) {
                $data = [];
                $data['total_income'] = $total_income;
                $data['total_expense'] = $total_expense;
                $data['date_from'] = $date_from;
                $data['date_to'] = $date_to;
                return ApiBaseMethod::sendResponse($data, null);
            }
            return view('backEnd.accounts.profit', compact('total_income', 'total_expense', 'date_from', 'date_to'));
        } catch (\Exception $e) {
            Toastr::error('Echec de l\'operation', 'Echec');
            return redirect()->back();
        }
    }
}
