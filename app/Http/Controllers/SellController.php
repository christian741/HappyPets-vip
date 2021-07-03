<?php

namespace App\Http\Controllers;

use App\Models\Sell;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Date;

class SellController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
     /**
     * Cierre de sesión (anular el token)
     */
    public function index(Request $request)
    {
        $request->user()->authorizeRoles(['admin']);
        $now = (new \DateTime)->format('Y-m-d');
        $sells = Sell::whereDate('created_at',$now)->get();
        return view('Admin.Sells.sellsToday',$sells);
    }

    public function create_sellsToday(Request $request)
    {
        $request->user()->authorizeRoles(['admin']);
        return view('Admin.Sells.sellsToday');
    }
}
