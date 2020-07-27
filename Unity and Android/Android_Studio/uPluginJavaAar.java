package com.example.unityplugintestaar;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.BluetoothLeAdvertiser;
import android.bluetooth.le.BluetoothLeScanner;
import android.bluetooth.le.ScanCallback;
import android.bluetooth.le.ScanFilter;
import android.bluetooth.le.ScanRecord;
import android.bluetooth.le.ScanResult;
import android.bluetooth.le.ScanSettings;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;

import com.unity3d.player.UnityPlayer;
import com.unity3d.player.UnityPlayerActivity;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.List;
import java.util.Vector;

import java.util.Vector;

public class uPluginJavaAar extends UnityPlayerActivity {
    // 통신
    static  Socket socket;     //클라이언트의 소켓

    static DataInputStream is;
    static DataOutputStream os;
    static String msg = "";
    static String rssiMsg = "";

    static boolean isConnected = true;
    static String ip;
    static String port;

    //블루투스
    BluetoothAdapter mBluetoothAdapter;
    BluetoothLeScanner mBluetoothLeScanner;
    BluetoothLeAdvertiser mBluetoothLeAdvertiser;
    ScanSettings.Builder mScanSettings;
    List<ScanFilter> scanFilters;


    //플러그인

    int x,y;

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.d("ppap","onCreate");


        //ClientSocketOpen("172.20.10.2", "9003");
    }

    ScanCallback mScanCallback = new ScanCallback() {
        @Override
        public void onScanResult(int callbackType, final ScanResult result) {
            super.onScanResult(callbackType, result);
            try {
                final ScanRecord scanRecord = result.getScanRecord();

                Log.d("ppap2", result.getDevice().getAddress() + " " + result.getRssi() + " " + result.getDevice().getName());
                final String add = result.getDevice().getAddress();
                final int r = result.getRssi();
                rssiMsg = add + "//"+ String.valueOf(r);
                if (os == null) {
                }   //서버와 연결되어 있지 않다면 전송불가..
                else {
                    new Thread(new Runnable() {
                        @Override
                        public void run() {
                            // TODO Auto-generated method stub
                            //서버로 보낼 메세지 EditText로 부터 얻어오기
                            //String msg = edit_msg.getText().toString();
                            try {

                                os.writeUTF(add +"//" +String.valueOf(r));  //서버로 메세지 보내기.UTF 방식으로(한글 전송가능...)
                                os.flush();        //다음 메세지 전송을 위해 연결통로의 버퍼를 지워주는 메소드..
                            } catch (IOException e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                            }
                        }//run method..

                    }).start(); //Thread 실행..
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

        @Override
        public void onBatchScanResults(List<ScanResult> results) {
            super.onBatchScanResults(results);
            Log.d("onBatchScanResults", results.size() + "");
        }

        @Override
        public void onScanFailed(int errorCode) {
            super.onScanFailed(errorCode);
            Log.d("onScanFailed()", errorCode+"");
        }
    };

    public void BluetoothScan(){
        Log.d("ppap","BluetoothScan");
        mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        mBluetoothLeScanner = mBluetoothAdapter.getBluetoothLeScanner();
        mBluetoothLeAdvertiser = mBluetoothAdapter.getBluetoothLeAdvertiser();

        mScanSettings = new ScanSettings.Builder();
        mScanSettings.setScanMode(ScanSettings.SCAN_MODE_LOW_LATENCY);
        // 스캔 주기를 2초로 줄여주는 Setting입니다.
        // 위 설정이 없으면 테스트해 본 결과 약 10초 주기로 스캔을 합니다.
        ScanSettings scanSettings = mScanSettings.build();

        mScanSettings = new ScanSettings.Builder();

        scanFilters = new Vector<>();
        ScanFilter.Builder scanFilter = new ScanFilter.Builder();

        scanFilter.setDeviceAddress("50:51:A9:7B:33:CD"); //bc001
        ScanFilter scan = scanFilter.build();
        scanFilters.add(scan);

        scanFilter.setDeviceAddress("F8:30:02:25:14:8C"); //bc002
        scan = scanFilter.build();
        scanFilters.add(scan);

        scanFilter.setDeviceAddress("50:51:A9:7B:05:F5"); //bc003
        scan = scanFilter.build();
        scanFilters.add(scan);

        scanFilter.setDeviceAddress("F8:30:02:29:74:5C"); //bc004
        scan = scanFilter.build();
        scanFilters.add(scan);

        mBluetoothLeScanner.startScan(scanFilters, scanSettings,mScanCallback);
    }

    public void getMsg(){
        //String mmsg = msg;
        Log.d("UnityHSH","getMsg is Excuted");
        UnityPlayer.UnitySendMessage("Refresh","getMessage",msg);
        //return mmsg;
    }

    public void getRssi(){
        Log.d("GetRssi()",rssiMsg);
        UnityPlayer.UnitySendMessage("BeaconBar","getRssi",rssiMsg);
    }

    //클라이언트 소켓 열고 서버 소켓에 접속
    public void ClientSocketOpen(final String mip, final String mport) {
        new Thread(new Runnable() {
            @Override
            public void run() {
                // TODO Auto-generated method stub
                try {
                    Log.d("ppap","ClientSocketOpen");
                    ip = mip;
                    port = mport;
                    if (ip.isEmpty() || port.isEmpty()) {
                        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                            public void run() {
                                Toast.makeText(UnityPlayer.currentActivity, "ip주소와 포트번호를 입력해주세요.", Toast.LENGTH_SHORT).show();
                            }
                        });
                    } else {
                        //서버와 연결하는 소켓 생성..
                        socket = new Socket(InetAddress.getByName(mip), Integer.parseInt(mport));
                        //여기까지 왔다는 것을 예외가 발생하지 않았다는 것이므로 소켓 연결 성공..
                        Log.d("ppap","Socket");
                        //서버와 메세지를 주고받을 통로 구축
                        is = new DataInputStream(socket.getInputStream());
                        os = new DataOutputStream(socket.getOutputStream());
                        if(is != null && os != null)Log.d("ppap","is & os Not null");

                        UnityPlayer.currentActivity.runOnUiThread(new Runnable() {
                            public void run() {
                                Toast.makeText(UnityPlayer.currentActivity, "Connected With Server", Toast.LENGTH_SHORT).show();
                            }
                        });
                        while (isConnected) {
                            try {
                                msg = is.readUTF(); //서버 부터 메세지가 전송되면 이를 UTF형식으로 읽어서 String 으로 리턴
                                Log.d("ppap2",msg);
                                //UnityPlayer.UnitySendMessage("sendMessage","getMessage",msg);
                            } catch (IOException e) {
                                // TODO Auto-generated catch block
                                e.printStackTrace();
                            }
                        }//while
                    }
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }).start();
    }

    @Override
    protected void onStop() {
        super.onStop();
        try {
            socket.close(); //소켓을 닫는다.
            mBluetoothLeScanner.stopScan(mScanCallback);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mBluetoothLeScanner.stopScan(mScanCallback);
    }
}
