pragma solidity ^0.8.7;

contract Todolist{

    struct Task{
        string task_name;
        bool is_done;
    }

    mapping(address => Task[]) private Users;

    function addTask (string calldata _task) external{
        Users[msg.sender].push(Task({
            task_name: _task,
            is_done: false
        }))
    }

    function getTask(uint _taskIndex) external view returns (Task memory){
        Task memory task = Users[msg.sender][_taskIndex];
        return task;
    }

    function length() external returns(uint){
        Users[msg.sender].length;
    }
}
